using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FoodShoppingCartUI.Models
{
    [Table("ShoppingCartDetail")]
    public class ShoppingCartDetail
    {
        public int Id { get; set; }
        [Required]
        public int ShoppingCartId { get; set; } 
        public ShoppingCart ShoppingCart { get; set; }
        [Required]
        public int FoodId { get; set; }
        public Food Food { get; set; }
        [Required]
        public int Quantity { get; set; }
        [Required]
        public double UnitPrice { get; set; }

    }
}
