using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace FoodShoppingCartUI.Models
{
    [Table("Country")]
    public class Country
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public string CountryName { get; set; }

        public string? CountryDescription { get; set; }

        public bool IsDeleted { get; set; } = false;

        public List<Food>? Foods { get; set;}
    }
}
