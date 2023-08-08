using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace FoodShoppingCartUI.Controllers
{
    [Authorize]
    public class ShoppingCartController : Controller
    {
        private readonly IShoppingCartRepository _shoppingCartRepo;

        public ShoppingCartController(IShoppingCartRepository cartRepo)
        {
            _shoppingCartRepo = cartRepo;
        }
        public async Task<IActionResult> AddItem(int foodId, int qty = 1, int redirect = 0)
        {
            var cartCount = await _shoppingCartRepo.AddItem(foodId, qty);
            if (redirect == 0)
                return Ok(cartCount);
            return RedirectToAction("GetUserCart");
        }

        public async Task<IActionResult> RemoveItem(int foodId)
        {
            var cartCount = await _shoppingCartRepo.RemoveItem(foodId);
            return RedirectToAction("GetUserCart");
        }
        public async Task<IActionResult> GetUserCart()
        {
            var cart = await _shoppingCartRepo.GetUserCart();
            return View(cart);
        }

        public async Task<IActionResult> GetTotalItemInCart()
        {
            int cartItem = await _shoppingCartRepo.GetCartItemCount();
            return Ok(cartItem);
        }

        public async Task<IActionResult> Checkout()
        {
            bool isCheckedOut = await _shoppingCartRepo.DoCheckout();
            if (!isCheckedOut)
                throw new Exception("Something happen in server side");
            return RedirectToAction("UserOrders", "UserOrder");
        }
    }
}
