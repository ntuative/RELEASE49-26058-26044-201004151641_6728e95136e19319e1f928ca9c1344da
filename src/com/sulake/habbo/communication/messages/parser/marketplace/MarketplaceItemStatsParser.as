package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1523:Array;
      
      private var var_1678:int;
      
      private var var_1675:int;
      
      private var var_1674:int;
      
      private var var_1677:int;
      
      private var _dayOffsets:Array;
      
      private var var_1676:int;
      
      private var var_1524:Array;
      
      public function MarketplaceItemStatsParser()
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
      
      public function get furniTypeId() : int
      {
         return var_1675;
      }
      
      public function get historyLength() : int
      {
         return var_1677;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1674;
      }
      
      public function get offerCount() : int
      {
         return var_1676;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1524;
      }
      
      public function get averagePrice() : int
      {
         return var_1678;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1678 = param1.readInteger();
         var_1676 = param1.readInteger();
         var_1677 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1523 = [];
         var_1524 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1523.push(param1.readInteger());
            var_1524.push(param1.readInteger());
            _loc3_++;
         }
         var_1674 = param1.readInteger();
         var_1675 = param1.readInteger();
         return true;
      }
   }
}
