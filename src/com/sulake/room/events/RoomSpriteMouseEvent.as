package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1996:Boolean = false;
      
      private var var_1991:Boolean = false;
      
      private var var_1997:String = "";
      
      private var _type:String = "";
      
      private var var_1994:Boolean = false;
      
      private var var_1799:Number = 0;
      
      private var var_1990:Number = 0;
      
      private var var_1993:Number = 0;
      
      private var var_1995:String = "";
      
      private var var_1803:Number = 0;
      
      private var var_1992:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1995 = param2;
         var_1997 = param3;
         var_1990 = param4;
         var_1993 = param5;
         var_1799 = param6;
         var_1803 = param7;
         var_1992 = param8;
         var_1991 = param9;
         var_1994 = param10;
         var_1996 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1992;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1996;
      }
      
      public function get localX() : Number
      {
         return var_1799;
      }
      
      public function get localY() : Number
      {
         return var_1803;
      }
      
      public function get canvasId() : String
      {
         return var_1995;
      }
      
      public function get altKey() : Boolean
      {
         return var_1991;
      }
      
      public function get spriteTag() : String
      {
         return var_1997;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1990;
      }
      
      public function get screenY() : Number
      {
         return var_1993;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1994;
      }
   }
}
