package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1067:int = 100;
      
      private static const const_1070:int = 200;
      
      private static const const_1069:int = 180;
      
      public static const const_882:int = 1;
      
      public static const const_409:int = 2;
      
      private static const const_1068:int = 250;
      
      private static const const_768:int = 5;
       
      
      private var var_590:BitmapData;
      
      private var var_299:Timer;
      
      private var var_8:IWindowContainer;
      
      private var var_693:BitmapData;
      
      private var var_300:Timer;
      
      private var var_69:IWindowContainer;
      
      private var var_1473:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_300 = new Timer(const_1068,1);
         var_299 = new Timer(const_1067,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_69 = param1;
         var_69.visible = false;
         _assets = param2;
         var_300.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_299.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_693 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_590 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_69.visible = false;
         var_299.reset();
         var_300.reset();
         if(var_8 != null)
         {
            var_8.removeChild(var_69);
         }
      }
      
      public function hideDelayed() : void
      {
         var_299.reset();
         var_300.reset();
         var_299.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_300 != null)
         {
            var_300.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_300.stop();
            var_300 = null;
         }
         if(var_299 != null)
         {
            var_299.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_299.stop();
            var_299 = null;
         }
         _assets = null;
         var_69 = null;
         var_8 = null;
         var_590 = null;
         var_693 = null;
      }
      
      public function showDelayed() : void
      {
         var_299.reset();
         var_300.reset();
         var_300.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_69 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_8 != null)
         {
            var_8.removeChild(var_69);
         }
         var_8 = param1;
         var_1473 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_69.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_69.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1069,param3.width),Math.min(const_1070,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_69.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_69 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_69.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_882:
               _loc2_.bitmap = var_693.clone();
               _loc2_.width = var_693.width;
               _loc2_.height = var_693.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_409:
               _loc2_.bitmap = var_590.clone();
               _loc2_.width = var_590.width;
               _loc2_.height = var_590.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_299.reset();
         var_300.reset();
         if(var_8 == null)
         {
            return;
         }
         var_69.visible = true;
         var_8.addChild(var_69);
         refreshArrow(var_1473);
         switch(var_1473)
         {
            case const_882:
               var_69.x = 0 - const_768;
               break;
            case const_409:
               var_69.x = var_8.width + const_768;
         }
         var_69.y = (0 - 0) / 2;
      }
   }
}
