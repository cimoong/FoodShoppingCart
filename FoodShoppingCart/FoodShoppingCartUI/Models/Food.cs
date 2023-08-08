
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FoodShoppingCartUI.Models
{
    [Table("Food")]
    public class Food
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public string FoodName { get; set; }

        public string? FoodDescription { get; set; }
        [Required]
        public double FoodPrice { get; set; }
        public string? Image { get; set; }

        public bool IsDeleted { get; set; } = false;

        [Required]
        public int CountryId { get; set; }
        public Country Country { get; set; }

        public List<OrderDetail> OrderDetails { get; set; }
        public List<ShoppingCartDetail> ShoppingCartDetails { get; set; }

        [NotMapped]
        public string CountryName { get; set; }
    }
}
