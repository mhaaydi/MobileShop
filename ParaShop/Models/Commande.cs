using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ParaShop.Models
{
    public class Commande
    {
        public int userId { get; set; }
        public int productId { get; set; }
        public double quantity { get; set; }
    }
}