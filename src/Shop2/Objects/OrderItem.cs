//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IIS.Shop2
{
    using System;
    using System.Xml;
    using ICSSoft.STORMNET;
    
    
    // *** Start programmer edit section *** (Using statements)

    // *** End programmer edit section *** (Using statements)


    /// <summary>
    /// Order item.
    /// </summary>
    // *** Start programmer edit section *** (OrderItem CustomAttributes)

    // *** End programmer edit section *** (OrderItem CustomAttributes)
    [AutoAltered()]
    [Caption("СтрокаЗаказа")]
    [AccessType(ICSSoft.STORMNET.AccessType.none)]
    [View("OrderItemE", new string[] {
            "Product as \'Товар\'",
            "Product.Name as \'\'",
            "Amount as \'Количество\'",
            "PriceWTaxes as \'Цена с налогом\'",
            "TotalSum as \'Сумма по позиции\'"}, Hidden=new string[] {
            "Product.Name"})]
    [MasterViewDefineAttribute("OrderItemE", "Product", ICSSoft.STORMNET.LookupTypeEnum.Standard, "", "Name")]
    [View("OrderItemInOrderL", new string[] {
            "Amount as \'\'",
            "PriceWTaxes as \'\'"}, Hidden=new string[] {
            "Amount",
            "PriceWTaxes"})]
    public class OrderItem : ICSSoft.STORMNET.DataObject
    {
        
        private int fAmount;
        
        private double fPriceWTaxes;
        
        private double fTotalSum;
        
        private IIS.Shop2.Product fProduct;
        
        private IIS.Shop2.Order fOrder;
        
        // *** Start programmer edit section *** (OrderItem CustomMembers)

        // *** End programmer edit section *** (OrderItem CustomMembers)

        
        /// <summary>
        /// Amount.
        /// </summary>
        // *** Start programmer edit section *** (OrderItem.Amount CustomAttributes)

        // *** End programmer edit section *** (OrderItem.Amount CustomAttributes)
        public virtual int Amount
        {
            get
            {
                // *** Start programmer edit section *** (OrderItem.Amount Get start)

                // *** End programmer edit section *** (OrderItem.Amount Get start)
                int result = this.fAmount;
                // *** Start programmer edit section *** (OrderItem.Amount Get end)

                // *** End programmer edit section *** (OrderItem.Amount Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (OrderItem.Amount Set start)

                // *** End programmer edit section *** (OrderItem.Amount Set start)
                this.fAmount = value;
                // *** Start programmer edit section *** (OrderItem.Amount Set end)

                // *** End programmer edit section *** (OrderItem.Amount Set end)
            }
        }
        
        /// <summary>
        /// PriceWTaxes.
        /// </summary>
        // *** Start programmer edit section *** (OrderItem.PriceWTaxes CustomAttributes)

        // *** End programmer edit section *** (OrderItem.PriceWTaxes CustomAttributes)
        public virtual double PriceWTaxes
        {
            get
            {
                // *** Start programmer edit section *** (OrderItem.PriceWTaxes Get start)

                // *** End programmer edit section *** (OrderItem.PriceWTaxes Get start)
                double result = this.fPriceWTaxes;
                // *** Start programmer edit section *** (OrderItem.PriceWTaxes Get end)

                // *** End programmer edit section *** (OrderItem.PriceWTaxes Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (OrderItem.PriceWTaxes Set start)

                // *** End programmer edit section *** (OrderItem.PriceWTaxes Set start)
                this.fPriceWTaxes = value;
                // *** Start programmer edit section *** (OrderItem.PriceWTaxes Set end)

                // *** End programmer edit section *** (OrderItem.PriceWTaxes Set end)
            }
        }
        
        /// <summary>
        /// TotalSum.
        /// </summary>
        // *** Start programmer edit section *** (OrderItem.TotalSum CustomAttributes)

        // *** End programmer edit section *** (OrderItem.TotalSum CustomAttributes)
        public virtual double TotalSum
        {
            get
            {
                // *** Start programmer edit section *** (OrderItem.TotalSum Get start)

                // *** End programmer edit section *** (OrderItem.TotalSum Get start)
                double result = this.fTotalSum;
                // *** Start programmer edit section *** (OrderItem.TotalSum Get end)

                // *** End programmer edit section *** (OrderItem.TotalSum Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (OrderItem.TotalSum Set start)

                // *** End programmer edit section *** (OrderItem.TotalSum Set start)
                this.fTotalSum = value;
                // *** Start programmer edit section *** (OrderItem.TotalSum Set end)

                // *** End programmer edit section *** (OrderItem.TotalSum Set end)
            }
        }
        
        /// <summary>
        /// Order item.
        /// </summary>
        // *** Start programmer edit section *** (OrderItem.Product CustomAttributes)

        // *** End programmer edit section *** (OrderItem.Product CustomAttributes)
        public virtual IIS.Shop2.Product Product
        {
            get
            {
                // *** Start programmer edit section *** (OrderItem.Product Get start)

                // *** End programmer edit section *** (OrderItem.Product Get start)
                IIS.Shop2.Product result = this.fProduct;
                // *** Start programmer edit section *** (OrderItem.Product Get end)

                // *** End programmer edit section *** (OrderItem.Product Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (OrderItem.Product Set start)

                // *** End programmer edit section *** (OrderItem.Product Set start)
                this.fProduct = value;
                // *** Start programmer edit section *** (OrderItem.Product Set end)

                // *** End programmer edit section *** (OrderItem.Product Set end)
            }
        }
        
        /// <summary>
        /// мастеровая ссылка на шапку IIS.Shop2.Order.
        /// </summary>
        // *** Start programmer edit section *** (OrderItem.Order CustomAttributes)

        // *** End programmer edit section *** (OrderItem.Order CustomAttributes)
        [Agregator()]
        [NotNull()]
        public virtual IIS.Shop2.Order Order
        {
            get
            {
                // *** Start programmer edit section *** (OrderItem.Order Get start)

                // *** End programmer edit section *** (OrderItem.Order Get start)
                IIS.Shop2.Order result = this.fOrder;
                // *** Start programmer edit section *** (OrderItem.Order Get end)

                // *** End programmer edit section *** (OrderItem.Order Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (OrderItem.Order Set start)

                // *** End programmer edit section *** (OrderItem.Order Set start)
                this.fOrder = value;
                // *** Start programmer edit section *** (OrderItem.Order Set end)

                // *** End programmer edit section *** (OrderItem.Order Set end)
            }
        }
        
        /// <summary>
        /// Class views container.
        /// </summary>
        public class Views
        {
            
            /// <summary>
            /// "OrderItemE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View OrderItemE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("OrderItemE", typeof(IIS.Shop2.OrderItem));
                }
            }
            
            /// <summary>
            /// "OrderItemInOrderL" view.
            /// </summary>
            public static ICSSoft.STORMNET.View OrderItemInOrderL
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("OrderItemInOrderL", typeof(IIS.Shop2.OrderItem));
                }
            }
        }
    }
    
    /// <summary>
    /// Detail array of OrderItem.
    /// </summary>
    // *** Start programmer edit section *** (DetailArrayDetailArrayOfOrderItem CustomAttributes)

    // *** End programmer edit section *** (DetailArrayDetailArrayOfOrderItem CustomAttributes)
    public class DetailArrayOfOrderItem : ICSSoft.STORMNET.DetailArray
    {
        
        // *** Start programmer edit section *** (IIS.Shop2.DetailArrayOfOrderItem members)

        // *** End programmer edit section *** (IIS.Shop2.DetailArrayOfOrderItem members)

        
        /// <summary>
        /// Construct detail array.
        /// </summary>
        /// <summary>
        /// Returns object with type OrderItem by index.
        /// </summary>
        /// <summary>
        /// Adds object with type OrderItem.
        /// </summary>
        public DetailArrayOfOrderItem(IIS.Shop2.Order fOrder) : 
                base(typeof(OrderItem), ((ICSSoft.STORMNET.DataObject)(fOrder)))
        {
        }
        
        public IIS.Shop2.OrderItem this[int index]
        {
            get
            {
                return ((IIS.Shop2.OrderItem)(this.ItemByIndex(index)));
            }
        }
        
        public virtual void Add(IIS.Shop2.OrderItem dataobject)
        {
            this.AddObject(((ICSSoft.STORMNET.DataObject)(dataobject)));
        }
    }
}
