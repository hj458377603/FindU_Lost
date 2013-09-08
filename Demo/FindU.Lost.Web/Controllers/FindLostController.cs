using Spring.Context;
using Spring.Context.Support;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FindU.Lost.Web.Controllers
{
    public class FindLostController : Controller
    {
        private IApplicationContext ctx;

        public FindLostController()
        {
            ctx = ContextRegistry.GetContext();
        }

        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpGet]
        public ActionResult GetMoreGoods()
        {
            return View();
        }

        [HttpGet]
        public ActionResult GetFindGoodsDetail()
        {
            return View();
        }

        [HttpGet]
        [ActionName("MyRelease")]
        public ActionResult GetMyRelease()
        {
            return View("GetMyRelease");
        }
    }
}
