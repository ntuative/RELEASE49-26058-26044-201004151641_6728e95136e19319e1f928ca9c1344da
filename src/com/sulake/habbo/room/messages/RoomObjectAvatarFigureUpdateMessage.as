package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2096:String;
      
      private var var_293:String;
      
      private var var_624:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_293 = param1;
         var_624 = param2;
         var_2096 = param3;
      }
      
      public function get race() : String
      {
         return var_2096;
      }
      
      public function get figure() : String
      {
         return var_293;
      }
      
      public function get gender() : String
      {
         return var_624;
      }
   }
}
