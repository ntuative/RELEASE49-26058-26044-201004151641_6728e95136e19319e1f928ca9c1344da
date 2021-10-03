package com.sulake.habbo.widget.events
{
   public class RoomWidgetChatInputContentUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_920:String = "whisper";
      
      public static const const_1352:String = "shout";
      
      public static const const_579:String = "RWWCIDE_CHAT_INPUT_CONTENT";
       
      
      private var var_1727:String = "";
      
      private var _userName:String = "";
      
      public function RoomWidgetChatInputContentUpdateEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_579,param3,param4);
         var_1727 = param1;
         _userName = param2;
      }
      
      public function get messageType() : String
      {
         return var_1727;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
