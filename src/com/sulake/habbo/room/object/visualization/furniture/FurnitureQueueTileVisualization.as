package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1098:int = 1;
      
      private static const const_1056:int = 3;
      
      private static const const_1097:int = 2;
      
      private static const const_1099:int = 15;
       
      
      private var var_876:int;
      
      private var var_231:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_231 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1097)
         {
            var_231 = new Array();
            var_231.push(const_1098);
            var_876 = const_1099;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_876 > 0)
         {
            --var_876;
         }
         if(var_876 == 0)
         {
            if(false)
            {
               super.setAnimation(var_231.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
