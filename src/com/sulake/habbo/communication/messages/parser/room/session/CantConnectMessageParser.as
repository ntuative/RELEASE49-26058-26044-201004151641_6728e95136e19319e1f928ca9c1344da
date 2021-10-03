package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1558:int = 2;
      
      public static const const_1203:int = 4;
      
      public static const const_1147:int = 1;
      
      public static const const_1206:int = 3;
       
      
      private var var_1002:int = 0;
      
      private var var_827:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1002;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1002 = param1.readInteger();
         if(var_1002 == 3)
         {
            var_827 = param1.readString();
         }
         else
         {
            var_827 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1002 = 0;
         var_827 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_827;
      }
   }
}
