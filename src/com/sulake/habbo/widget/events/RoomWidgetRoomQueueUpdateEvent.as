package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_371:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_333:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_856:int;
      
      private var var_244:Boolean;
      
      private var var_1659:Boolean;
      
      private var var_1503:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_856 = param2;
         var_1659 = param3;
         var_244 = param4;
         var_1503 = param5;
      }
      
      public function get position() : int
      {
         return var_856;
      }
      
      public function get isActive() : Boolean
      {
         return var_244;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1503;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1659;
      }
   }
}
