namespace FoodShoppingCartUI
{
    public interface IHomeRepository
    {
        Task<IEnumerable<Country>> Countries();
        Task<IEnumerable<Food>> GetFoods(string searchTerm = "", int countryId = 0);
    }
}