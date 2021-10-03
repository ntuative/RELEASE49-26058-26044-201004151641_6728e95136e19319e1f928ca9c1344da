package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_596:Array;
      
      private var var_1282:int;
      
      private var var_1400:Array;
      
      private var var_595:Array;
      
      private var var_1338:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1338 = _loc2_.isWrappingEnabled;
         var_1282 = _loc2_.wrappingPrice;
         var_1400 = _loc2_.stuffTypes;
         var_595 = _loc2_.boxTypes;
         var_596 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_596;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1400;
      }
      
      public function get price() : int
      {
         return var_1282;
      }
      
      public function get boxTypes() : Array
      {
         return var_595;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1338;
      }
   }
}
