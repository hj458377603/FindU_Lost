/****************************************
** 文件名: dbo.AccountInfo.cs
** 作者: Jun
** 创建时间: 2013/9/7 10:29:03
****************************************/

using System;

namespace FindU.Lost.Entity.Entity
{
    /// <summary>
    /// 账户
    /// </summary>
    public class AccountInfo
    {
        #region UserId
        /// <summary>
        /// 用户ID（主键，外键）
        /// </summary>
        public int UserId
        {
            set;
            get;
        }
        #endregion

        #region Status
        /// <summary>
        /// 账户状态（非空）
        /// </summary>
        public bool Status
        {
            set;
            get;
        }
        #endregion

        #region TimeRegister
        /// <summary>
        /// 注册时间（非空）
        /// </summary>
        public DateTime TimeRegister
        {
            set;
            get;
        }
        #endregion

        #region TimeLastLogin
        /// <summary>
        /// 最近一次登陆时间
        /// </summary>
        public DateTime TimeLastLogin
        {
            set;
            get;
        }
        #endregion

        #region LoginErrorCount
        /// <summary>
        /// 登陆失败次数（非空）
        /// </summary>
        public int LoginErrorCount
        {
            set;
            get;
        }
        #endregion

    }
}


