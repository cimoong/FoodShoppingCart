namespace FoodShoppingCartUI
{
    public interface IUserOrderRepository
    {
        Task<IEnumerable<Order>> UserOrders();
        Task<Order> GetOrder(int Id);
        Task<bool> DoShipping(int Id);
    }
}