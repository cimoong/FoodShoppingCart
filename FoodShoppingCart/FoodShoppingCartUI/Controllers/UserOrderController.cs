using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace FoodShoppingCartUI.Controllers
{
    [Authorize]
    public class UserOrderController : Controller
    {
        private readonly IUserOrderRepository _userOrderRepo;

        public UserOrderController(IUserOrderRepository userOrderRepo)
        {
            _userOrderRepo = userOrderRepo;
        }
        public async Task<IActionResult> UserOrders()
        {
            var orders = await _userOrderRepo.UserOrders();
            return View(orders);
        }
        public async Task<IActionResult> DoShipping(int Id)
        {
            bool isShipped = await _userOrderRepo.DoShipping(Id);
            if (!isShipped)
                throw new Exception("Something happen in server side");
            return RedirectToAction("UserOrders", "UserOrder");
        }
    }
}
