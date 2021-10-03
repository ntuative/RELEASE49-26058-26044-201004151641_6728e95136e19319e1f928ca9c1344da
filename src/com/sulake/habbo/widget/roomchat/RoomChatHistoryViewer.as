package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IScrollableWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class RoomChatHistoryViewer implements IDisposable
   {
      
      private static const const_1041:int = 18;
      
      private static const SCROLLBAR_WIDTH:int = 20;
      
      public static const const_859:int = 3;
       
      
      private var var_1419:Boolean = false;
      
      private var _isDisposed:Boolean = false;
      
      private var var_1142:Boolean = false;
      
      private var var_1333:Boolean = false;
      
      private var var_333:Number = 1;
      
      private var _widget:RoomChatWidget;
      
      private var var_291:Boolean = false;
      
      private var var_212:Number = -1;
      
      private var var_145:RoomChatHistoryPulldown;
      
      private var var_41:IScrollbarWindow;
      
      public function RoomChatHistoryViewer(param1:RoomChatWidget, param2:IHabboWindowManager, param3:IWindowContainer, param4:IAssetLibrary)
      {
         super();
         _isDisposed = false;
         _widget = param1;
         var_145 = new RoomChatHistoryPulldown(param1,param2,param3,param4);
         var_145.state = RoomChatHistoryPulldown.const_227;
         var _loc5_:IItemListWindow = param3.getChildByName("chat_contentlist") as IItemListWindow;
         if(_loc5_ == null)
         {
            return;
         }
         param3.removeChild(_loc5_);
         param3.addChild(_loc5_);
         var_41 = param2.createWindow("chatscroller","",HabboWindowType.const_996,HabboWindowStyle.const_42,0 | 0,new Rectangle(param3.rectangle.right - SCROLLBAR_WIDTH,param3.y,SCROLLBAR_WIDTH,param3.height - 0),null,0) as IScrollbarWindow;
         param3.addChild(var_41);
         var_41.visible = false;
         var_41.scrollable = _loc5_ as IScrollableWindow;
      }
      
      public function get scrollbarWidth() : Number
      {
         return !!var_291 ? Number(SCROLLBAR_WIDTH) : Number(0);
      }
      
      private function onStageMouseUp(param1:MouseEvent) : void
      {
         cancelDrag();
         if(_widget != null)
         {
            _widget.mouseUp();
         }
      }
      
      private function processDrag(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         if(var_212 > 0 && param2)
         {
            if(var_1142)
            {
               if(Math.abs(param1 - var_212) <= const_859)
               {
                  return;
               }
               var_1142 = false;
            }
            if(!var_291)
            {
               _widget.resizeContainerToLowestItem();
               showHistoryViewer();
               moveHistoryScroll();
            }
            if(var_291)
            {
               moveHistoryScroll();
               _loc4_ = var_41.scrollable.scrollableRegion.height / var_41.scrollable.visibleRegion.height;
               _loc5_ = (param1 - var_212) / 0;
               _loc3_ = var_333 - _loc5_ / _loc4_;
               _loc3_ = Math.max(0,_loc3_);
               _loc3_ = Math.min(1,_loc3_);
               _loc6_ = param1 - var_212;
               _loc7_ = true;
               _loc8_ = true;
               if(var_41.scrollV < 1 - const_1041 / var_41.scrollable.scrollableRegion.height)
               {
                  _loc8_ = false;
               }
               if(_loc8_ || var_1419)
               {
                  _widget.stretchAreaBottomBy(_loc6_);
                  _loc7_ = false;
                  var_41.scrollV = 1;
               }
               if(_loc7_)
               {
                  var_333 = _loc3_;
               }
               var_212 = param1;
            }
         }
         else
         {
            var_212 = -1;
         }
      }
      
      public function beginDrag(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var_212 = param1;
         var_1419 = param2;
         var_1142 = true;
         if(var_41 != null)
         {
            var_333 = var_41.scrollV;
         }
         if(var_41 != null)
         {
            _loc3_ = var_41.context.getDesktopWindow().getDisplayObject();
            if(_loc3_ != null)
            {
               _loc4_ = _loc3_.stage;
               if(_loc4_ != null)
               {
                  _loc4_.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  _loc4_.addEventListener(MouseEvent.MOUSE_UP,onStageMouseUp);
               }
            }
         }
      }
      
      public function update(param1:uint) : void
      {
         if(var_145 != null)
         {
            var_145.update(param1);
         }
         moveHistoryScroll();
      }
      
      public function get active() : Boolean
      {
         return var_291;
      }
      
      public function showHistoryViewer() : void
      {
         if(!var_291 && !var_1333)
         {
            var_291 = true;
            setHistoryViewerScrollbar(true);
            var_145.state = RoomChatHistoryPulldown.const_340;
            if(_widget != null)
            {
               _widget.reAlignItemsToHistoryContent();
               _widget.disableDragTooltips();
            }
         }
      }
      
      private function setHistoryViewerScrollbar(param1:Boolean) : void
      {
         if(var_41 != null)
         {
            var_41.visible = param1;
            if(param1)
            {
               var_41.scrollV = 1;
               var_333 = 1;
            }
            else
            {
               var_291 = false;
               var_212 = -1;
            }
         }
      }
      
      public function toggleHistoryViewer() : void
      {
         if(var_291)
         {
            hideHistoryViewer();
         }
         else
         {
            showHistoryViewer();
         }
      }
      
      public function cancelDrag() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var_212 = -1;
         if(var_41 != null)
         {
            _loc1_ = var_41.context.getDesktopWindow().getDisplayObject();
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_.stage;
               if(_loc2_ != null)
               {
                  _loc2_.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  _loc2_.removeEventListener(MouseEvent.MOUSE_UP,onStageMouseUp);
               }
            }
         }
      }
      
      public function dispose() : void
      {
         hideHistoryViewer();
         if(var_41 != null)
         {
            var_41.dispose();
            var_41 = null;
         }
         if(var_145 != null)
         {
            var_145.dispose();
            var_145 = null;
         }
         _isDisposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(var_145 == null)
         {
            return;
         }
         var_145.state = param1 == true ? 0 : int(RoomChatHistoryPulldown.const_227);
      }
      
      public function containerResized(param1:Rectangle, param2:Boolean = false) : void
      {
         if(var_41 != null)
         {
            var_41.x = param1.x + param1.width - 0;
            var_41.y = param1.y;
            var_41.height = param1.height - 0;
            if(param2)
            {
               var_41.scrollV = var_333;
            }
         }
         if(var_145 != null)
         {
            var_145.containerResized(param1);
         }
      }
      
      private function moveHistoryScroll() : void
      {
         if(!var_291)
         {
            return;
         }
         if(var_212 == -1)
         {
            return;
         }
         if(var_1419)
         {
            return;
         }
         var _loc1_:Number = var_333 - 0;
         if(_loc1_ == 0)
         {
            return;
         }
         if(Math.abs(_loc1_) < 0.01)
         {
            var_41.scrollV = var_333;
         }
         else
         {
            var_41.scrollV += _loc1_ / 2;
         }
      }
      
      public function get pulldownBarHeight() : Number
      {
         return RoomChatHistoryPulldown.const_76;
      }
      
      public function set disabled(param1:Boolean) : void
      {
         var_1333 = param1;
      }
      
      public function get visible() : Boolean
      {
         if(var_145 == null)
         {
            return false;
         }
         return true || true;
      }
      
      public function hideHistoryViewer() : void
      {
         var_333 = 1;
         cancelDrag();
         var_291 = false;
         setHistoryViewerScrollbar(false);
         var_145.state = RoomChatHistoryPulldown.const_227;
         if(_widget != null)
         {
            _widget.resetArea();
            _widget.enableDragTooltips();
         }
      }
      
      private function onStageMouseMove(param1:MouseEvent) : void
      {
         processDrag(param1.stageY,param1.buttonDown);
      }
   }
}
