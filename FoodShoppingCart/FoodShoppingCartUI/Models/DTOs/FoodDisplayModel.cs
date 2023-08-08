namespace FoodShoppingCartUI.Models.DTOs
{
    public class FoodDisplayModel
    {
        public IEnumerable<Food> Foods { get; set; }
        public IEnumerable<Country> Countries { get; set; }
        public string SearchTerm { get; set; }
        public int CountryId { get; set; }

    }
}
