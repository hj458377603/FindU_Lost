/****************************************
** 文件名: dbo.Account.cs
** 作者: Jun
** 创建时间: 2013/9/7 10:27:34
****************************************/

using System;

namespace FindU.Lost.Entity.Entity
{
    /// <summary>
    /// 账户
    /// </summary>
    public class Account
    {
        #region UserId
        /// <summary>
        /// 用户ID
        /// </summary>
        public int UserId
        {
            set;
            get;
        }
        #endregion

        #region UserName
        /// <summary>
        /// 用户名（唯一键）
        /// </summary>
        public string UserName
        {
            set;
            get;
        }
        #endregion

        #region Password
        /// <summary>
        /// 密码
        /// </summary>
        public string Password
        {
            set;
            get;
        }
        #endregion

    }
}


