package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1059:int;
      
      private var var_1284:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1059 = param1;
         var_1284 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1059;
      }
      
      public function get itemName() : String
      {
         return var_1284;
      }
   }
}
