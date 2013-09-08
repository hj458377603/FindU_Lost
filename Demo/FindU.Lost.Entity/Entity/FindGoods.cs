/****************************************
** 文件名: dbo.FindGoods.cs
** 作者: Jun
** 创建时间: 2013/9/7 10:30:02
****************************************/

using System;

namespace FindU.Lost.Entity.Entity
{
    /// <summary>
    /// 账户
    /// </summary>
    public class FindGoods
    {
        #region FindGoodsId
        /// <summary>
        /// 捡到物品主键
        /// </summary>
        public int FindGoodsId
        {
            set;
            get;
        }
        #endregion

        #region FindDescription
        /// <summary>
        /// 捡到的描述（非空）
        /// </summary>
        public string FindDescription
        {
            set;
            get;
        }
        #endregion

        #region TimeFind
        /// <summary>
        /// 捡到的时间（非空）
        /// </summary>
        public DateTime TimeFind
        {
            set;
            get;
        }
        #endregion

        #region location
        /// <summary>
        /// 捡到的地点
        /// </summary>
        public string location
        {
            set;
            get;
        }
        #endregion

        #region longitude
        /// <summary>
        /// 捡到地点的经度
        /// </summary>
        public string longitude
        {
            set;
            get;
        }
        #endregion

        #region latitude
        /// <summary>
        /// 捡到地点的纬度
        /// </summary>
        public string latitude
        {
            set;
            get;
        }
        #endregion

        #region GoodsId
        /// <summary>
        /// 物品Id(外键)
        /// </summary>
        public string GoodsId
        {
            set;
            get;
        }
        #endregion

        #region UserId
        /// <summary>
        /// 用户Id（外键）
        /// </summary>
        public int UserId
        {
            set;
            get;
        }
        #endregion

    }
}


