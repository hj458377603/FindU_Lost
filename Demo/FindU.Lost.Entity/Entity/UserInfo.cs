/****************************************
** 文件名: dbo.UserInfo.cs
** 作者: Jun
** 创建时间: 2013/9/7 10:31:48
****************************************/

using System;

namespace FindU.Lost.Entity.Entity
{
    /// <summary>
    /// 账户
    /// </summary>
    public class UserInfo
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

        #region RealName
        /// <summary>
        /// 真实姓名
        /// </summary>
        public string RealName
        {
            set;
            get;
        }
        #endregion

        #region Tel
        /// <summary>
        /// 手机号
        /// </summary>
        public string Tel
        {
            set;
            get;
        }
        #endregion

        #region Email
        /// <summary>
        /// 电子邮箱(唯一键，可以为空)
        /// </summary>
        public string Email
        {
            set;
            get;
        }
        #endregion

        #region IsMale
        /// <summary>
        /// 是否是男性
        /// </summary>
        public bool IsMale
        {
            set;
            get;
        }
        #endregion

        #region Department
        /// <summary>
        /// 
        /// </summary>
        public string Department
        {
            set;
            get;
        }
        #endregion

        #region Birthday
        /// <summary>
        /// 出生日期
        /// </summary>
        public DateTime Birthday
        {
            set;
            get;
        }
        #endregion

    }
}


