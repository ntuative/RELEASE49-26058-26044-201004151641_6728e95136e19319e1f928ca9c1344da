package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_666:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_505:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_666);
         var_505 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_505;
      }
   }
}
