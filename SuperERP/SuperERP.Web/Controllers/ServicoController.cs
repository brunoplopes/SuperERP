using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SuperERP.Web.Controllers
{
    public class ServicoController : Controller
    {
        //
        // GET: /Servico/
        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Servico/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Servico/Create
        public ActionResult Create()
        {
            //TODO: Como pegar a lista de catgegorias para montar um dropdown?
            //ViewBag.ID_Categoria = new SelectList(Vendas.DTO.)
            //ViewBag.CategoriaList = new SelectList(Vendas.Listar.CategoriasServico());
            return View();
        }

        //
        // POST: /Servico/Create
        [HttpPost]
        public ActionResult Create(SuperERP.Vendas.DTO.ServicoDTO servicoDTO)
        {
            try
            {
                // TODO: Add insert logic here
                SuperERP.Vendas.Cadastro.Servico(servicoDTO);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Servico/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Servico/Edit/5
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
        // GET: /Servico/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Servico/Delete/5
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
