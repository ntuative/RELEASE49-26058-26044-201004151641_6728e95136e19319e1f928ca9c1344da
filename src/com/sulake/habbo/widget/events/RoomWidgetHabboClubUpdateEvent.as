package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_235:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2028:Boolean = false;
      
      private var var_2029:int = 0;
      
      private var var_2027:int = 0;
      
      private var var_2026:int;
      
      private var var_2030:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_235,param6,param7);
         var_2030 = param1;
         var_2027 = param2;
         var_2029 = param3;
         var_2028 = param4;
         var_2026 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_2026;
      }
      
      public function get pastPeriods() : int
      {
         return var_2029;
      }
      
      public function get periodsLeft() : int
      {
         return var_2027;
      }
      
      public function get daysLeft() : int
      {
         return var_2030;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2028;
      }
   }
}
