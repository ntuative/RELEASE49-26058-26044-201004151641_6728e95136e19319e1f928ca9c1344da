package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_374:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_421:int = 0;
      
      public static const const_953:int = 2;
      
      public static const const_834:int = 1;
      
      public static const const_740:Boolean = false;
      
      public static const const_624:String = "";
      
      public static const const_383:int = 0;
      
      public static const const_396:int = 0;
      
      public static const const_428:int = 0;
       
      
      private var var_2157:int = 0;
      
      private var var_1719:String = "";
      
      private var var_1488:int = 0;
      
      private var var_2155:int = 0;
      
      private var var_2156:Number = 0;
      
      private var var_1731:int = 255;
      
      private var var_2158:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get method_3() : int
      {
         return var_2157;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            method_3 = param1.method_3;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1488 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2156;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2155 = param1;
      }
      
      public function set method_3(param1:int) : void
      {
         var_2157 = param1;
      }
      
      public function get tag() : String
      {
         return var_1719;
      }
      
      public function get alpha() : int
      {
         return var_1731;
      }
      
      public function get ink() : int
      {
         return var_1488;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2156 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2155;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2158 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2158;
      }
      
      public function set tag(param1:String) : void
      {
         var_1719 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1731 = param1;
      }
   }
}
