using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;

namespace SuperERP.Compras.Service
{
    static class ServicoGenerico<T, TDTO> where T : class
    {
        public static void Cadastrar(TDTO produto)
        {
            Config.AutoMapperConfig.Inicializar();
            var repositorio = new DAL.Repositories.Repositorio<T>();
            var novoProduto = Mapper.Map<TDTO, T>(produto);
            repositorio.Cadastrar(novoProduto);
        }
        public static void Alterar(TDTO produto)
        {
            Config.AutoMapperConfig.Inicializar();
            var repositorio = new DAL.Repositories.Repositorio<T>();
            var novoProduto = Mapper.Map<TDTO, T>(produto);
            repositorio.Alterar(novoProduto);
        }
        public static ICollection<TDTO> Listar()
        {
            Config.AutoMapperConfig.Inicializar();
            var repositorio = new DAL.Repositories.Repositorio<T>();
            var listaProdutoDTO = repositorio.ObterLista();
            var estoqueDTO = Mapper.Map<ICollection<T>, ICollection<TDTO>>(listaProdutoDTO);
            return estoqueDTO;
        }
        public static void Deletar(int IdEntidade)
        {
            var repositorio = new DAL.Repositories.Repositorio<T>();
            repositorio.Deletar(IdEntidade);
        }

        public static TDTO BuscaPorId(int IdEntidade)
        {
            var repositorio = new DAL.Repositories.Repositorio<T>();
            var entidade = repositorio.ObterPorEntidadePorId(IdEntidade);
            var entidadeDTO = Mapper.Map<T, TDTO>(entidade);
            return entidadeDTO;
        }
    }
}
