package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_266:String = "RWFAM_MOVE";
      
      public static const const_607:String = "RWFUAM_ROTATE";
      
      public static const const_603:String = "RWFAM_PICKUP";
       
      
      private var var_1868:int = 0;
      
      private var var_2208:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1868 = param2;
         var_2208 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1868;
      }
      
      public function get furniCategory() : int
      {
         return var_2208;
      }
   }
}
