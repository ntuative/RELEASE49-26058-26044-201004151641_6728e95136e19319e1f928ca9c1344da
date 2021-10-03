package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_348:Number = 0.5;
      
      private static const const_767:int = 3;
      
      private static const const_1064:Number = 1;
       
      
      private var var_1929:Boolean = false;
      
      private var var_1930:Boolean = false;
      
      private var var_1009:int = 0;
      
      private var var_259:Vector3d = null;
      
      private var var_1926:int = 0;
      
      private var var_1927:int = 0;
      
      private var var_1931:Boolean = false;
      
      private var var_1928:int = -2;
      
      private var var_1922:Boolean = false;
      
      private var var_1923:int = 0;
      
      private var var_1924:int = -1;
      
      private var var_411:Vector3d = null;
      
      private var var_1925:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1926;
      }
      
      public function get targetId() : int
      {
         return var_1924;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1923 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1926 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1929 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1924 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1930 = param1;
      }
      
      public function dispose() : void
      {
         var_411 = null;
         var_259 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_411 == null)
         {
            var_411 = new Vector3d();
         }
         var_411.assign(param1);
         var_1009 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1928;
      }
      
      public function get screenHt() : int
      {
         return var_1925;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1927 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_259;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1925 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1923;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1929;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1930;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_411 != null && var_259 != null)
         {
            ++var_1009;
            _loc2_ = Vector3d.dif(var_411,var_259);
            if(_loc2_.length <= const_348)
            {
               var_259 = var_411;
               var_411 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_348 * (const_767 + 1))
               {
                  _loc2_.mul(const_348);
               }
               else if(var_1009 <= const_767)
               {
                  _loc2_.mul(const_348);
               }
               else
               {
                  _loc2_.mul(const_1064);
               }
               var_259 = Vector3d.sum(var_259,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1931 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1927;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1922 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1928 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_259 != null)
         {
            return;
         }
         var_259 = new Vector3d();
         var_259.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1931;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1922;
      }
   }
}
