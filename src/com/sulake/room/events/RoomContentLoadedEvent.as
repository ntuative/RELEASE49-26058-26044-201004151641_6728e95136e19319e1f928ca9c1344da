package com.sulake.room.events
{
   import flash.events.Event;
   
   public class RoomContentLoadedEvent extends Event
   {
      
      public static const const_338:String = "RCLE_SUCCESS";
      
      public static const const_440:String = "RCLE_FAILURE";
      
      public static const const_593:String = "RCLE_CANCEL";
       
      
      private var var_2264:String;
      
      public function RoomContentLoadedEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         var_2264 = param2;
      }
      
      public function get contentType() : String
      {
         return var_2264;
      }
   }
}
