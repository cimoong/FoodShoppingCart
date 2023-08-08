using FoodShoppingCartUI.Models;
using Humanizer.Localisation;
using Microsoft.EntityFrameworkCore;
using static System.Reflection.Metadata.BlobBuilder;

namespace FoodShoppingCartUI.Repositories
{
    public class HomeRepository : IHomeRepository
    {
        private readonly ApplicationDbContext _dbContext;
        public HomeRepository(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }
        public async Task<IEnumerable<Country>> Countries()
        {
            return await _dbContext.Country.ToListAsync();
        }
        public async Task<IEnumerable<Food>> GetFoods(string searchTerm="",int countryId = 0)
        {
            searchTerm = searchTerm.ToLower();
            IEnumerable<Food> foods = await (from food in _dbContext.Food.Where(a => a.IsDeleted == false)
                         join country in _dbContext.Country
                         on food.CountryId equals country.Id
            where string.IsNullOrWhiteSpace(searchTerm) || (food != null && food.FoodName.ToLower().Contains(searchTerm))
            select new Food
            {
                             Id = food.Id,
                             FoodName = food.FoodName,
                             FoodDescription = food.FoodDescription,
                             FoodPrice = food.FoodPrice,
                             Image = food.Image,
                             CountryId = food.CountryId,
                             CountryName = country.CountryName,
                             IsDeleted = food.IsDeleted
                         }
                         ).ToListAsync();
            if (countryId > 0)
            {
                foods = foods.Where(a => a.CountryId == countryId).ToList();
            }

            return foods;
        }
    }
}
