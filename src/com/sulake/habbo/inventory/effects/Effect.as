package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1832:Date;
      
      private var var_1196:Boolean = false;
      
      private var _type:int;
      
      private var var_374:BitmapData;
      
      private var var_244:Boolean = false;
      
      private var var_1179:int;
      
      private var var_575:int = 1;
      
      private var var_996:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_374;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_575;
         if(var_575 < 0)
         {
            var_575 = 0;
         }
         var_996 = var_1179;
         var_244 = false;
         var_1196 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_996 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_244;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_374 = param1;
      }
      
      public function get duration() : int
      {
         return var_1179;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1196;
      }
      
      public function get effectsInInventory() : int
      {
         return var_575;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_374;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_244)
         {
            var_1832 = new Date();
         }
         var_244 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_575 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_244)
         {
            _loc1_ = var_996 - (new Date().valueOf() - var_1832.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_996;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1196 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1179 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
