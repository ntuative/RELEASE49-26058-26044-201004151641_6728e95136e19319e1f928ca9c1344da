package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_578:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1719:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_578);
         var_1719 = param1;
      }
      
      public function get tag() : String
      {
         return var_1719;
      }
   }
}
