using BananaCity.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace BananaCity.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        // Tela de Clientes e Pets (Movida para cá para facilitar)
        public IActionResult Clientes()
        {
            var clientes = Simulacao.ClientesList;
            return View(clientes);
        }



        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
