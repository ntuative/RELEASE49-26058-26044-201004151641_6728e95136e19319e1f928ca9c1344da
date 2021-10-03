package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_501:ToolbarIconGroup;
      
      private var var_1016:Boolean = false;
      
      private var var_1962:String;
      
      private var var_856:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1018:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_32:String = "-1";
      
      private var var_95:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_697:String;
      
      private var var_1960:int;
      
      private var var_698:Timer;
      
      private var var_1478:Array;
      
      private var var_1017:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2315:Array;
      
      private var var_261:ToolbarBarMenuAnimator;
      
      private var var_416:ToolbarIconAnimator;
      
      private var var_591:Array;
      
      private var var_842:Array;
      
      private var var_843:String = "-1";
      
      private var var_2384:Boolean = true;
      
      private var var_1019:Array;
      
      private var var_1229:Timer;
      
      private var var_1961:int;
      
      private var var_83:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_591 = new Array();
         var_842 = new Array();
         var_2315 = new Array();
         var_1017 = new ToolbarIconBouncer(0.8,1);
         super();
         var_501 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_697 = param4;
         _events = param5;
         var_261 = param6;
         var_1229 = new Timer(40,40);
         var_1229.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_95 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_406,HabboWindowStyle.const_42,HabboWindowParam.const_43,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_95.background = true;
         var_95.mouseTreshold = 0;
         var_95.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_42,HabboWindowParam.const_42,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_95.addChild(_window);
         _window.addEventListener(WindowEvent.const_46,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1478[var_1019.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_1961;
      }
      
      public function get iconId() : String
      {
         return var_697;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_856 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_32 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_95 == null || _window == null)
         {
            return;
         }
         var_95.width = _window.width;
         var_95.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_83 = (0 - 0) / 2;
            _y = var_856 + (0 - 0) / 2;
         }
         else
         {
            var_83 = var_856 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_95.x = var_83;
         var_95.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_95 != null)
         {
            var_95.dispose();
            var_95 = null;
         }
         var_591 = null;
         var_842 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_261 = null;
         var_416 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_591.indexOf(param1) < 0)
         {
            var_591.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_842.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_1016)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_261)
               {
                  var_261.repositionWindow(var_697,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_58);
                  _loc4_.iconId = var_697;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_1018;
                  }
               }
               break;
            case WindowMouseEvent.const_32:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_843;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_591.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_842[var_591.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_1016 = param1;
         if(var_95 != null)
         {
            var_95.visible = var_1016;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_95 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_95.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_95.toolTipCaption = "${toolbar.icon.tooltip." + var_1962.toLowerCase() + "}";
         }
         var_95.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_261 != null)
         {
            var_261.animateWindowIn(this,param1,param2,var_697,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_416 != null && _window != null)
         {
            var_416.update(_window);
            if(var_416.hasNextState())
            {
               state = var_416.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1478 = new Array();
         var_1019 = new Array();
         var_1962 = param1.@id;
         var_1961 = int(param1.@window_offset_from_icon);
         var_1960 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_1018 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_843 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_1019.push(_loc5_.id);
               var_1478.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_1018 == "-1")
                  {
                     var_1018 = _loc5_.id;
                  }
                  if(var_843 == "-1")
                  {
                     var_843 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_32 = var_843;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_261 != null)
         {
            var_261.hideWindow(param1,param2,var_697,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_261 != null)
         {
            var_261.positionWindow(this,param1,param2,var_697,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_261 != null)
         {
            var_261.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_1016;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_1017 != null && _window != null)
         {
            var_1017.update();
            _window.y = var_1017.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_698 != null)
         {
            var_698.stop();
            var_698 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_1016)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_416 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_83,_y,_bitmapData);
            if(false)
            {
               var_698 = new Timer(_loc1_.timer);
               var_698.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_698.start();
            }
            if(_loc1_.bounce)
            {
               var_1017.reset(-7);
               var_1229.reset();
               var_1229.start();
            }
         }
         else
         {
            var_416 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_1960 + var_501.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_32);
      }
      
      public function get window() : IWindow
      {
         return var_95;
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_842[var_591.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_501;
      }
   }
}
