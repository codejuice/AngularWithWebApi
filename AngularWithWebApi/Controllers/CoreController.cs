using AngularWithWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace AngularWithWebApi.Controllers
{
    [RoutePrefix("api/v1/core")]
    public class CoreController : ApiController
    {
        [HttpGet]
        [Route("drinks")]
        public IHttpActionResult GetDrinks()
        {
            var drinks = new List<Drink>() {
                new Drink() { name="Orange" },
               new Drink() { name="Apple" },
               new Drink() { name="Pineapple" },
               new Drink() { name="Pear" },
               new Drink() { name="Grape" },
               new Drink() { name="Cranberry" },
               new Drink() { name="Creative", description="Rare exotic, and one of kind." },
            };


            return Json(drinks);
        }
    }

}