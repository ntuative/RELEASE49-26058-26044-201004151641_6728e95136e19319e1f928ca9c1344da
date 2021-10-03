package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1942:int;
      
      private var var_1554:int;
      
      private var var_1940:int;
      
      private var var_1944:int;
      
      private var var_1943:int;
      
      private var var_1553:int;
      
      private var var_1941:int;
      
      private var var_1338:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1942;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1554;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1941;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1944;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1943;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1553;
      }
      
      public function get commission() : int
      {
         return var_1940;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1338 = param1.readBoolean();
         var_1940 = param1.readInteger();
         var_1554 = param1.readInteger();
         var_1553 = param1.readInteger();
         var_1944 = param1.readInteger();
         var_1942 = param1.readInteger();
         var_1943 = param1.readInteger();
         var_1941 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1338;
      }
   }
}
