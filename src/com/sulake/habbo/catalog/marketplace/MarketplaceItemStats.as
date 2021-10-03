package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1523:Array;
      
      private var var_1678:int;
      
      private var var_1675:int;
      
      private var var_1677:int;
      
      private var var_1674:int;
      
      private var _dayOffsets:Array;
      
      private var var_1676:int;
      
      private var var_1524:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1523;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1523 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1675;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1524 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1678 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1677;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1674;
      }
      
      public function get offerCount() : int
      {
         return var_1676;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1676 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1524;
      }
      
      public function get averagePrice() : int
      {
         return var_1678;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1674 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1677 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1675 = param1;
      }
   }
}
