package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1059:String;
      
      private var var_2206:int;
      
      private var var_2200:int;
      
      private var var_1585:int;
      
      private var var_2201:int;
      
      private var _category:int;
      
      private var var_2398:int;
      
      private var var_2205:int;
      
      private var var_2203:int;
      
      private var var_2207:int;
      
      private var var_2202:int;
      
      private var var_2204:Boolean;
      
      private var var_1385:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_2206 = param1;
         var_1059 = param2;
         var_2200 = param3;
         var_2207 = param4;
         _category = param5;
         var_1385 = param6;
         var_1585 = param7;
         var_2203 = param8;
         var_2205 = param9;
         var_2202 = param10;
         var_2201 = param11;
         var_2204 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2207;
      }
      
      public function get extra() : int
      {
         return var_1585;
      }
      
      public function get stuffData() : String
      {
         return var_1385;
      }
      
      public function get groupable() : Boolean
      {
         return var_2204;
      }
      
      public function get creationMonth() : int
      {
         return var_2202;
      }
      
      public function get roomItemID() : int
      {
         return var_2200;
      }
      
      public function get itemType() : String
      {
         return var_1059;
      }
      
      public function get itemID() : int
      {
         return var_2206;
      }
      
      public function get songID() : int
      {
         return var_1585;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2203;
      }
      
      public function get creationYear() : int
      {
         return var_2201;
      }
      
      public function get creationDay() : int
      {
         return var_2205;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
