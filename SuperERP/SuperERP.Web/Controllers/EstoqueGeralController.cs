using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SuperERP.Web.Controllers
{
    public class EstoqueGeralController : Controller
    {
        //
        // GET: /EstoqueGeral/

        public ActionResult Index()
        {
            var estoque = Vendas.Listar.Estoque();
            return View(estoque);
        }

        //
        // GET: /EstoqueGeral/Inventario/5

        public ActionResult Inventario(int id)
        {
            ViewBag.vendaAtivos = Vendas.Listar.VendaAtivosProduto(id);
            ViewBag.compraAtivos = Vendas.Listar.CompraAtivosProduto(id);
            return View();
        }

        //
        // GET: /EstoqueGeral/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /EstoqueGeral/Create

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
        // GET: /EstoqueGeral/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /EstoqueGeral/Edit/5

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
        // GET: /EstoqueGeral/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /EstoqueGeral/Delete/5

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
