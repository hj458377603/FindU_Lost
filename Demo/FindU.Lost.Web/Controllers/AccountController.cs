using FindU.Lost.BLL;
using FindU.Lost.Entity;
using FindU.Lost.Entity.Entity;
using Spring.Context;
using Spring.Context.Support;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FindU.Lost.Web.Controllers
{
    public class AccountController : Controller
    {
        private IApplicationContext ctx;
        private AccountBLL accountBll;

        public AccountController()
        {
            ctx = ContextRegistry.GetContext();
            accountBll = ctx.GetObject("AccountBLL") as AccountBLL;
        }

        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }

        [HttpGet]
        [ActionName("UserInfo")]
        public ActionResult GetUserInfo()
        {
            return View("GetUserInfo");
        }

        [HttpGet]
        [ActionName("AccountInfo")]
        public ActionResult GetAccountInfo()
        {
            return View("GetAccountInfo");
        }

        [HttpGet]
        public ActionResult ChangeHeadImg()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(Account account)
        {
            Account res = accountBll.SelectByUserNameAndPwd(account.UserName, account.Password);
            return View(res);
        }
    }
}