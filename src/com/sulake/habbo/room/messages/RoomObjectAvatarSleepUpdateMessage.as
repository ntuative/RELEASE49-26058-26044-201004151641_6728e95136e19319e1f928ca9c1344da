package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarSleepUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2074:Boolean;
      
      public function RoomObjectAvatarSleepUpdateMessage(param1:Boolean = false)
      {
         super();
         var_2074 = param1;
      }
      
      public function get isSleeping() : Boolean
      {
         return var_2074;
      }
   }
}