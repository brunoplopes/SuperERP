using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuperERP.DAL.Repositories
{
    interface IRepository<T> : IDisposable where T : class
    {
        ICollection<T> ObterLista();
        T ObterPorEntidadePorId(int id);
        bool Cadastrar(T entidade);
        bool Deletar(T entidade);
        bool Deletar(int id);
    }
}
