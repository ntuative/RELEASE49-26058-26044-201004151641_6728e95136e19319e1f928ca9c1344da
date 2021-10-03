package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2252:Number;
      
      private var var_630:Number = 0;
      
      private var var_2253:Number;
      
      private var var_629:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2252 = param1;
         var_2253 = param2;
      }
      
      public function update() : void
      {
         var_629 += var_2253;
         var_630 += var_629;
         if(var_630 > 0)
         {
            var_630 = 0;
            var_629 = var_2252 * -1 * var_629;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_629 = param1;
         var_630 = 0;
      }
      
      public function get location() : Number
      {
         return var_630;
      }
   }
}
