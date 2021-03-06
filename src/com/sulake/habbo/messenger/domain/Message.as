package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_670:int = 2;
      
      public static const const_831:int = 6;
      
      public static const const_581:int = 1;
      
      public static const const_527:int = 3;
      
      public static const const_900:int = 4;
      
      public static const const_613:int = 5;
       
      
      private var var_1977:String;
      
      private var var_1083:int;
      
      private var var_1978:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1083 = param2;
         var_1978 = param3;
         var_1977 = param4;
      }
      
      public function get time() : String
      {
         return var_1977;
      }
      
      public function get senderId() : int
      {
         return var_1083;
      }
      
      public function get messageText() : String
      {
         return var_1978;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
