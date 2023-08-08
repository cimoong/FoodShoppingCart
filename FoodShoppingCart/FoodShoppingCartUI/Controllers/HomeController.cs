using FoodShoppingCartUI.Models.DTOs;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace FoodShoppingCartUI.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IHomeRepository _homeRepository;

        public HomeController(ILogger<HomeController> logger, IHomeRepository homeRepository)
        {
            _logger = logger;
            _homeRepository = homeRepository;
        }

        public async Task<IActionResult> Index(string searchTerm="", int countryId = 0)
        {
            IEnumerable<Food> foods = await _homeRepository.GetFoods(searchTerm, countryId);
            IEnumerable<Country> countries = await _homeRepository.Countries();
            FoodDisplayModel foodModel = new FoodDisplayModel
            {
                Foods = foods,
                Countries = countries,
                SearchTerm = searchTerm,
                CountryId = countryId
            };
            return View(foodModel);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}