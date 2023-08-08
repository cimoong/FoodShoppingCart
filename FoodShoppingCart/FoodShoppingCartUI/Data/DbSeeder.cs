using Microsoft.AspNetCore.Identity;
using FoodShoppingCartUI.Constants;

namespace FoodShoppingCartUI.Data
{
    public class DbSeeder
    {
        public static async Task SeedDefaultData(IServiceProvider service)
        {
            var userManager = service.GetService<UserManager<IdentityUser>>();
            var roleManager = service.GetService<RoleManager<IdentityRole>>();

            //Add constant role to db
            await roleManager.CreateAsync(new IdentityRole(Roles.Admin.ToString()));
            await roleManager.CreateAsync(new IdentityRole(Roles.User.ToString()));

            //create Admin user
            var admin = new IdentityUser
            {
                UserName = "admin@gmail.com",
                Email = "admin@gmail.com",
                EmailConfirmed = true,
            };

            var isUserExists = await userManager.FindByEmailAsync(admin.Email);
            if (isUserExists is null)
            {
                await userManager.CreateAsync(admin, "Admin123!");
                await userManager.AddToRoleAsync(admin, Roles.Admin.ToString());
            }
        }
    }
}
