package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1057:int = 31;
      
      private static const const_1056:int = 32;
      
      private static const const_497:int = 30;
      
      private static const const_757:int = 20;
      
      private static const const_496:int = 10;
       
      
      private var var_621:Boolean = false;
      
      private var var_231:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_231 = new Array();
         super();
         super.setAnimation(const_497);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_621 = true;
            var_231 = new Array();
            var_231.push(const_1057);
            var_231.push(const_1056);
            return;
         }
         if(param1 > 0 && param1 <= const_496)
         {
            if(var_621)
            {
               var_621 = false;
               var_231 = new Array();
               if(_direction == 2)
               {
                  var_231.push(const_757 + 5 - param1);
                  var_231.push(const_496 + 5 - param1);
               }
               else
               {
                  var_231.push(const_757 + param1);
                  var_231.push(const_496 + param1);
               }
               var_231.push(const_497);
               return;
            }
            super.setAnimation(const_497);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
