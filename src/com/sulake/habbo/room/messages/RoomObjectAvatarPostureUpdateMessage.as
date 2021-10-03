package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2224:String;
      
      private var var_827:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2224 = param1;
         var_827 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2224;
      }
      
      public function get parameter() : String
      {
         return var_827;
      }
   }
}
