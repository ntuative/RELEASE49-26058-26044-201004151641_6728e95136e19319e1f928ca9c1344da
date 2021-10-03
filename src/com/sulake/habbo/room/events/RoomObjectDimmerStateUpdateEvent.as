package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectDimmerStateUpdateEvent extends RoomObjectEvent
   {
      
      public static const const_67:String = "RODSUE_DIMMER_STATE";
       
      
      private var var_1026:int;
      
      private var _color:uint;
      
      private var var_1027:int;
      
      private var var_1685:int;
      
      private var var_32:int;
      
      public function RoomObjectDimmerStateUpdateEvent(param1:int, param2:String, param3:int, param4:int, param5:int, param6:uint, param7:int, param8:Boolean = false, param9:Boolean = false)
      {
         super(const_67,param1,param2,param8,param9);
         var_32 = param3;
         var_1685 = param4;
         var_1026 = param5;
         _color = param6;
         var_1027 = param7;
      }
      
      public function get brightness() : uint
      {
         return var_1027;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1026;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function get presetId() : int
      {
         return var_1685;
      }
   }
}
