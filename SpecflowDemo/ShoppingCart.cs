using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculatorApp
{
    public class CartItem
    {
        public string ItemName { get; }
        public int Quantity { get; }
        public decimal Price { get; }

        public CartItem(string itemName, int quantity, decimal price)
        {
            ItemName = itemName;
            Quantity = quantity;
            Price = price;
        }
    }

    
    public class ShoppingCart
    {
        private List<CartItem> items = new List<CartItem>();

        //Add item to shopping cart
        public void AddItem(string itemName, int quantity,decimal price ) {
            items.Add(new CartItem(itemName, quantity, price));
        }

        //Calculate total price of all items in cart
        public decimal CalculateTotalPrice()
        {
            decimal total = 0;
            foreach(var item in items)
            {
                total += item.Quantity * item.Price;
            }
            return total;
        }
    }



}
