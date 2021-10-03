package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_845:String = "inventory_badges";
      
      public static const const_1236:String = "inventory_clothes";
      
      public static const const_1346:String = "inventory_furniture";
      
      public static const const_595:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_804:String = "inventory_effects";
       
      
      private var var_1890:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_595);
         var_1890 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1890;
      }
   }
}
