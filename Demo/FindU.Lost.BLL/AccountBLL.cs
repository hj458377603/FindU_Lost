using FindU.Lost.DAL.MapperDao;
using FindU.Lost.Entity;
using FindU.Lost.Entity.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FindU.Lost.BLL
{
    public class AccountBLL
    {
        public AccountDao AccountDao { get; set; }

        // 登陆
        public Account SelectByUserNameAndPwd(string userName, string password)
        {
            Account account = AccountDao.SelectByUserNameAndPwd(userName, password);
            return account;
        }
    }
}
