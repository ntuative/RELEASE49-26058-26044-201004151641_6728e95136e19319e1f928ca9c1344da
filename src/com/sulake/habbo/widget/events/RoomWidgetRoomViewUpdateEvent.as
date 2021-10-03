package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_577:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_540:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_273:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1536:Point;
      
      private var var_1537:Rectangle;
      
      private var var_183:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1537 = param2;
         var_1536 = param3;
         var_183 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1537 != null)
         {
            return var_1537.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_183;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1536 != null)
         {
            return var_1536.clone();
         }
         return null;
      }
   }
}
