package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2182:int;
      
      private var var_2183:Boolean;
      
      private var _offerId:int;
      
      private var var_1724:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2183 = param1.readBoolean();
         var_2182 = param1.readInteger();
         var_1724 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1724;
      }
      
      public function get monthsRequired() : int
      {
         return var_2182;
      }
      
      public function get isVip() : Boolean
      {
         return var_2183;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
