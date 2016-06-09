using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SuperERP.Web.Controllers
{
    public class ParcelasAReceberController : Controller
    {
        //
        // GET: /ParcelasAReceber/
        public ActionResult Index()
        {
            var parcelas = Vendas.Listar.Parcelamentos();

            ViewBag.parcelasAreceber  = parcelas[0];
            ViewBag.parcelasRecebidas = parcelas[1];
            ViewBag.parcelasVencidas = parcelas[2];

            ViewBag.receberValor   = parcelas[0].ToList().Sum(p => p.Valor);
            ViewBag.recebidasValor = parcelas[1].ToList().Sum(p => p.Valor);
            ViewBag.vencidasValor = parcelas[2].ToList().Sum(p => p.Valor);

            return View();
        }

        //
        // GET: /ParcelasAReceber/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /ParcelasAReceber/Create
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /ParcelasAReceber/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        //
        // POST: /ParcelasAReceber/Edit/5
        //[HttpPost]
        public ActionResult Receber(int id)
        {
            try
            {
                // TODO: Add update logic here
                Vendas.Alterar.Parcela(id);
                return RedirectToAction("Index");
            }
            catch
            {
                return RedirectToAction("Index");
            }
        }

        //
        // GET: /ParcelasAReceber/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /ParcelasAReceber/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
