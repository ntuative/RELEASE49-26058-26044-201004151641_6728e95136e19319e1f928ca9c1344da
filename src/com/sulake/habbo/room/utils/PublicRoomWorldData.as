package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1968:Number = 1;
      
      private var var_183:Number = 1;
      
      private var var_1846:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1846 = param1;
         var_183 = param2;
         var_1968 = param3;
      }
      
      public function get scale() : Number
      {
         return var_183;
      }
      
      public function get heightScale() : Number
      {
         return var_1968;
      }
   }
}
