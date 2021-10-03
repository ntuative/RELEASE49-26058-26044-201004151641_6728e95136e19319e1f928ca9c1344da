package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_437:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_713:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_745:String;
      
      private var var_149:int;
      
      private var var_189:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_149 = param2;
         var_189 = param3;
         var_745 = param4;
      }
      
      public function get objectId() : int
      {
         return var_149;
      }
      
      public function get text() : String
      {
         return var_189;
      }
      
      public function get colorHex() : String
      {
         return var_745;
      }
   }
}
