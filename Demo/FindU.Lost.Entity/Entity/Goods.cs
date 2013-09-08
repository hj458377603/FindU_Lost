/****************************************
** 文件名: dbo.Goods.cs
** 作者: Jun
** 创建时间: 2013/9/7 10:31:20
****************************************/

using System;

namespace FindU.Lost.Entity.Entity
{
    /// <summary>
    /// 账户
    /// </summary>
    public class Goods
    {
        #region GoodsId
        /// <summary>
        /// 物品编号（主键，非空）
        /// </summary>
        public string GoodsId
        {
            set;
            get;
        }
        #endregion

        #region GoodsTypeId
        /// <summary>
        /// 物品类别编号（枚举，非空）
        /// </summary>
        public int GoodsTypeId
        {
            set;
            get;
        }
        #endregion

        #region GoodsName
        /// <summary>
        /// 物品名称
        /// </summary>
        public string GoodsName
        {
            set;
            get;
        }
        #endregion

        #region GoodsDescription
        /// <summary>
        /// 物品描述（非空）
        /// </summary>
        public string GoodsDescription
        {
            set;
            get;
        }
        #endregion

        #region GoodsImgUrl
        /// <summary>
        /// 物品的图片地址（非空）
        /// </summary>
        public string GoodsImgUrl
        {
            set;
            get;
        }
        #endregion

    }
}


