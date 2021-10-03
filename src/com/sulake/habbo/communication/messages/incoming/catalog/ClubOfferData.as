package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1954:int;
      
      private var var_1282:int;
      
      private var var_1952:int;
      
      private var _offerId:int;
      
      private var var_1958:int;
      
      private var var_1959:int;
      
      private var var_1953:Boolean;
      
      private var var_1955:int;
      
      private var var_1957:Boolean;
      
      private var var_1327:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1327 = param1.readString();
         var_1282 = param1.readInteger();
         var_1957 = param1.readBoolean();
         var_1953 = param1.readBoolean();
         var_1952 = param1.readInteger();
         var_1955 = param1.readInteger();
         var_1958 = param1.readInteger();
         var_1954 = param1.readInteger();
         var_1959 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1958;
      }
      
      public function get month() : int
      {
         return var_1954;
      }
      
      public function get price() : int
      {
         return var_1282;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1952;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1955;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1957;
      }
      
      public function get day() : int
      {
         return var_1959;
      }
      
      public function get vip() : Boolean
      {
         return var_1953;
      }
      
      public function get productCode() : String
      {
         return var_1327;
      }
   }
}
