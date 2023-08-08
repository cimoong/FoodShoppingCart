using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace FoodShoppingCartUI.Repositories
{
    public class UserOrderRepository : IUserOrderRepository
    {
        private readonly ApplicationDbContext _dbContext;
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly UserManager<IdentityUser> _userManager;


        public UserOrderRepository(ApplicationDbContext dbContext,
            UserManager<IdentityUser> userManager,
             IHttpContextAccessor httpContextAccessor)
        {
            _dbContext = dbContext;
            _httpContextAccessor = httpContextAccessor;
            _userManager = userManager;
        }
        public async Task<IEnumerable<Order>> UserOrders()
        {
            var userId = GetUserId();
            if (string.IsNullOrEmpty(userId))
                throw new Exception("User is not logged-in");
            var orders = await _dbContext.Order
                            .Include(x => x.OrderStatus)
                            .Include(x => x.OrderDetails)
                            .ThenInclude(x => x.Food)
                            .ThenInclude(x => x.Country)
                            .Where(a => a.UserId == userId)
                            .ToListAsync();
            return orders;
        }

        public async Task<Order> GetOrder(int Id)
        {
            var order = await _dbContext.Order.FirstOrDefaultAsync(x => x.Id == Id);
            return order;
        }

        public async Task<bool> DoShipping(int Id)
        {
            using var transaction = _dbContext.Database.BeginTransaction();
            try
            {
                // logic
                // move data from shoppingCartDetail to order and order detail then we will remove shopping cart detail
                var userId = GetUserId();
                if (string.IsNullOrEmpty(userId))
                    throw new Exception("User is not logged-in");
                var order = await GetOrder(Id);
                if (order is null)
                    throw new Exception("Invalid Order");
                var orderDetail = _dbContext.OrderDetail
                                    .Where(a => a.OrderId == order.Id).ToList();
                if (orderDetail.Count == 0)
                    throw new Exception("Order Detail is empty");
                order.OrderStatusId = 2; //shipped
                _dbContext.Order.Update(order);
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
