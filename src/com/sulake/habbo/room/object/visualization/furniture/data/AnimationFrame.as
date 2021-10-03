package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_550:int = -1;
      
      public static const const_985:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1681:int = -1;
      
      private var var_83:int = 0;
      
      private var var_1137:int = 1;
      
      private var var_785:int = 1;
      
      private var var_1680:Boolean = false;
      
      private var var_1682:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_83 = param2;
         _y = param3;
         var_1680 = param5;
         if(param4 < 0)
         {
            param4 = const_550;
         }
         var_785 = param4;
         var_1137 = param4;
         if(param6 >= 0)
         {
            var_1681 = param6;
            var_1682 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_785 > 0 && param1 > var_785)
         {
            param1 = var_785;
         }
         var_1137 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_785;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1682;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_785 < 0)
         {
            return const_550;
         }
         return var_1137;
      }
      
      public function get activeSequence() : int
      {
         return var_1681;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1680;
      }
      
      public function get x() : int
      {
         return var_83;
      }
   }
}
