using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace FoodShoppingCartUI.Repositories
{
    public class ShoppingCartRepository : IShoppingCartRepository
    {
        private readonly ApplicationDbContext _dbContext;
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly UserManager<IdentityUser> _userManager;
        public ShoppingCartRepository(ApplicationDbContext dbContext, IHttpContextAccessor httpContextAccessor, UserManager<IdentityUser> userManager)
        {

            _dbContext = dbContext;
            _httpContextAccessor = httpContextAccessor;
            _userManager = userManager;
        }

        public async Task<int> AddItem(int foodId, int qty)
        {
            string userId = GetUserId();
            using var transaction = _dbContext.Database.BeginTransaction();
            try
            {
                if (string.IsNullOrEmpty(userId))
                    throw new Exception("user is not logged-in");
                var cart = await GetCart(userId);
                if (cart is null)
                {
                    cart = new ShoppingCart
                    {
                        UserId = userId
                    };
                    _dbContext.ShoppingCart.Add(cart);
                }
                _dbContext.SaveChanges();
                // shopping cart detail section
                var cartItem = _dbContext.ShoppingCartDetail
                                  .FirstOrDefault(a => a.ShoppingCartId == cart.Id && a.FoodId == foodId);
                if (cartItem is not null)
                {
                    cartItem.Quantity += qty;
                }
                else
                {
                    var food = _dbContext.Food.Find(foodId);
                    cartItem = new ShoppingCartDetail
                    {
                        FoodId = foodId,
                        ShoppingCartId = cart.Id,
                        Quantity = qty,
                        UnitPrice = food.FoodPrice  
                    };
                    _dbContext.ShoppingCartDetail.Add(cartItem);
                }
                _dbContext.SaveChanges();
                transaction.Commit();
            }
            catch (Exception ex)
            {
            }
            var cartItemCount = await GetCartItemCount(userId);
            return cartItemCount;
        }


        public async Task<int> RemoveItem(int foodId)
        {
            //using var transaction = _db.Database.BeginTransaction();
            string userId = GetUserId();
            try
            {
                if (string.IsNullOrEmpty(userId))
                    throw new Exception("user is not logged-in");
                var cart = await GetCart(userId);
                if (cart is null)
                    throw new Exception("Invalid Shopping Cart");
                // shoppingcart detail section
                var cartItem = _dbContext.ShoppingCartDetail
                                  .FirstOrDefault(a => a.ShoppingCartId == cart.Id && a.FoodId == foodId);
                if (cartItem is null)
                    throw new Exception("Not items in Shopping Cart");
                else if (cartItem.Quantity == 1)
                    _dbContext.ShoppingCartDetail.Remove(cartItem);
                else
                    cartItem.Quantity = cartItem.Quantity - 1;
                _dbContext.SaveChanges();
            }
            catch (Exception ex)
            {

            }
            var cartItemCount = await GetCartItemCount(userId);
            return cartItemCount;
        }

        public async Task<ShoppingCart> GetUserCart()
        {
            var userId = GetUserId();
            if (userId == null)
                throw new Exception("Invalid userid");
            var shoppingCart = await _dbContext.ShoppingCart
                                  .Include(a => a.ShoppingCartDetails)
                                  .ThenInclude(a => a.Food)
                                  .ThenInclude(a => a.Country)
                                  .Where(a => a.UserId == userId).FirstOrDefaultAsync();
            return shoppingCart;

        }
        public async Task<ShoppingCart> GetCart(string userId)
        {
            var cart = await _dbContext.ShoppingCart.FirstOrDefaultAsync(x => x.UserId == userId);
            return cart;
        }

        public async Task<int> GetCartItemCount(string userId = "")
        {
            if (string.IsNullOrEmpty(userId))
            {
                userId = GetUserId();
            }
            var data = await (from cart in _dbContext.ShoppingCart.Where(a => a.UserId == userId)
                              join cartDetail in _dbContext.ShoppingCartDetail
                              on cart.Id equals cartDetail.ShoppingCartId
                              select new { cartDetail.Id }
                        ).ToListAsync();
            return data.Count;
        }

        public async Task<bool> DoCheckout()
        {
            using var transaction = _dbContext.Database.BeginTransaction();
            try
            {
                // logic
                // move data from shoppingCartDetail to order and order detail then we will remove shopping cart detail
                var userId = GetUserId();
                if (string.IsNullOrEmpty(userId))
                    throw new Exception("User is not logged-in");
                var cart = await GetCart(userId);
                if (cart is null)
                    throw new Exception("Invalid shopping cart");
                var cartDetail = _dbContext.ShoppingCartDetail
                                    .Where(a => a.ShoppingCartId == cart.Id).ToList();
                if (cartDetail.Count == 0)
                    throw new Exception("Shopping Cart is empty");
                var order = new Order
                {
                    UserId = userId,
                    CreatedDate = DateTime.UtcNow,
                    OrderStatusId = 1//pending
                };
                _dbContext.Order.Add(order);
                _dbContext.SaveChanges();
                foreach (var item in cartDetail)
                {
                    var orderDetail = new OrderDetail
                    {
                        FoodId = item.FoodId,
                        OrderId = order.Id,
                        Quantity = item.Quantity,
                        UnitPrice = item.UnitPrice
                    };
                    _dbContext.OrderDetail.Add(orderDetail);
                }
                _dbContext.SaveChanges();

                // removing the shoppingcartdetails
                _dbContext.ShoppingCartDetail.RemoveRange(cartDetail);
                _dbContext.SaveChanges();
                transaction.Commit();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        private string GetUserId()
        {
            var principal = _httpContextAccessor.HttpContext.User;
            string userId = _userManager.GetUserId(principal);
            return userId;
        }
    }
}
