package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1854:Number = 0;
      
      private var var_1855:Number = 0;
      
      private var var_1853:Number = 0;
      
      private var var_1856:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1855 = param1;
         var_1853 = param2;
         var_1854 = param3;
         var_1856 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1855;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1854;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1853;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1856;
      }
   }
}
