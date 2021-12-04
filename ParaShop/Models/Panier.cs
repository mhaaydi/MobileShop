using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ParaShop.Models
{
    public class Panier
    {
        public string name { get; set; }
        public string description { get; set; }
        public string categorie { get; set; }
        public double price { get; set; }
        public double quantiteCommande { get; set; }
        public double totalPrice { get; set; }
    }
}