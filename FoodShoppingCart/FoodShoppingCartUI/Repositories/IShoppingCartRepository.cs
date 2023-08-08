namespace FoodShoppingCartUI
{
    public interface IShoppingCartRepository
    {
        Task<int> AddItem(int foodId, int qty);
        Task<int> RemoveItem(int foodId);
        Task<ShoppingCart> GetUserCart();
        Task<ShoppingCart> GetCart(string userId);
        Task<int> GetCartItemCount(string userId = "");
        Task<bool> DoCheckout();

    }
}