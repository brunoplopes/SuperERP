using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SuperERP.Web.Controllers
{
    public class NotaFiscalVendaController : Controller
    {

        //
        // GET: /NotaFiscalVenda/Produto/5

        public ActionResult Produto(int id)
        {
            var venda = Vendas.Listar.Venda(id);
            var vendaAtivos = Vendas.Listar.VendaAtivos(id);

            ViewBag.venda = venda;
            ViewBag.vendaAtivos = vendaAtivos;

            return View();
        }

        //
        // GET: /NotaFiscalVenda/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /NotaFiscalVenda/Create

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
        // GET: /NotaFiscalVenda/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /NotaFiscalVenda/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /NotaFiscalVenda/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /NotaFiscalVenda/Delete/5

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
