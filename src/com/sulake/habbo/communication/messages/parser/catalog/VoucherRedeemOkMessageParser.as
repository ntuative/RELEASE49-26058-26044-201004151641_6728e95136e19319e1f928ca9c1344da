package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1279:String = "";
      
      private var var_1278:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1278 = "";
         var_1279 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1279;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1278 = param1.readString();
         var_1279 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1278;
      }
   }
}
