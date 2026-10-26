using Microsoft.AspNetCore.Mvc;

namespace BananaCity.Controllers
{
    public class ContaController : Controller
    {
        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Login(string email, string senha)
        {
            //DEFININDO USUARIO E SENHA FIXOS PARA TESTE:
            string emailCorreto = "admin@email.com";
            string senhaCorreta = "123456789";

            //VALIDA SE O E-MAIL E A SENHA BATEM COM OS FIXOS
            if(email == emailCorreto && senha == senhaCorreta)
            {
                //INSTACNIA O FUNCIONARIO USNADO A ORIENTAÇÃO A OBEJTO
                Funcionario funcionario = new Funcionario("Administrador", email, "Gerente");

                //SE AUTENTICADO COM SUCESSO, VAI PARA O MENU PRINCIPAL
                return RedirectToAction("Index", "Home");
            }

            //SE ERRAR, EXIBI A MENSAGEM DE ERRO NA TELA
            ModelState.AddModelError("", "E-mail ou senha inocrretos");
            return View();
        }
    }
}
