package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1355:int;
      
      private var var_1148:int;
      
      private var var_1354:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1355;
      }
      
      public function flush() : Boolean
      {
         var_1148 = 0;
         var_1355 = 0;
         var_1354 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1148;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1355 = param1.readInteger();
         var_1148 = param1.readInteger();
         var_1354 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1354;
      }
   }
}
