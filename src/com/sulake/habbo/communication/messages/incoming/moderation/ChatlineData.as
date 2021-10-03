package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1564:String;
      
      private var var_1619:int;
      
      private var var_1618:int;
      
      private var var_1616:int;
      
      private var var_1617:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1619 = param1.readInteger();
         var_1616 = param1.readInteger();
         var_1618 = param1.readInteger();
         var_1617 = param1.readString();
         var_1564 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1564;
      }
      
      public function get hour() : int
      {
         return var_1619;
      }
      
      public function get minute() : int
      {
         return var_1616;
      }
      
      public function get chatterName() : String
      {
         return var_1617;
      }
      
      public function get chatterId() : int
      {
         return var_1618;
      }
   }
}
