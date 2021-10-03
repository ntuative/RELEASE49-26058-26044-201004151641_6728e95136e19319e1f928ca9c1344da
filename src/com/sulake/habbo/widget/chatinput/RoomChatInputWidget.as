package com.sulake.habbo.widget.chatinput
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.runtime.exceptions.CrashMeError;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetChatInputContentUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetChatInputDisplayEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomViewUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChatInputWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetChatMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class RoomChatInputWidget extends RoomWidgetBase implements IUpdateReceiver
   {
      
      private static const const_1052:int = 2;
      
      private static const const_1408:int = 150;
      
      private static const const_1053:int = 3000;
      
      private static const const_1051:int = 30000;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1173:int;
      
      private var var_1174:Boolean = false;
      
      private var var_1172:String = "";
      
      private var var_402:int = -1;
      
      private var var_804:Timer = null;
      
      private var _visualization:RoomChatInputView;
      
      private var var_1733:Boolean = false;
      
      private var var_805:Boolean = false;
      
      private var var_670:int = 0;
      
      private var var_21:Component = null;
      
      public function RoomChatInputWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:Component)
      {
         var_1173 = getTimer();
         super(param1,param2,param3);
         var_21 = param4;
         var_21.registerUpdateReceiver(this,9);
      }
      
      public function sendChat(param1:String, param2:int, param3:String = "") : void
      {
         if(var_805)
         {
            return;
         }
         checkForFlooding();
         var _loc4_:RoomWidgetChatMessage = new RoomWidgetChatMessage(RoomWidgetChatMessage.const_537,param1,param2,param3);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc4_);
         }
      }
      
      private function onReleaseTimerTick(param1:TimerEvent) : void
      {
         if(_visualization != null)
         {
            var_670 = var_670 - 1;
            _visualization.showFloodBlocking(var_670);
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_332,onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_212,onRoomObjectDeselected);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_273,onRoomViewUpdate);
         param1.addEventListener(RoomWidgetChatInputContentUpdateEvent.const_579,onChatInputUpdate);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_229,onUserInfo);
         param1.addEventListener(RoomWidgetChatInputDisplayEvent.const_541,onSettings);
         super.registerUpdateEvents(param1);
      }
      
      public function update(param1:uint) : void
      {
         if(var_1174)
         {
            var_1174 = false;
            throw new CrashMeError();
         }
      }
      
      public function get allowPaste() : Boolean
      {
         return var_1733;
      }
      
      public function get floodBlocked() : Boolean
      {
         return var_805;
      }
      
      private function onRoomViewUpdate(param1:RoomWidgetRoomViewUpdateEvent) : void
      {
         if(_visualization == null)
         {
            _visualization = new RoomChatInputView(this,windowManager,assets,localizations);
         }
         refreshWindowPosition();
      }
      
      private function onReleaseTimerComplete(param1:TimerEvent) : void
      {
         Logger.log("Releasing flood blocking");
         var_805 = false;
         var_402 = -1;
         if(_visualization != null)
         {
            _visualization.hideFloodBlocking();
         }
         var_804 = null;
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var_1172 = param1.name;
      }
      
      private function onSettings(param1:RoomWidgetChatInputDisplayEvent) : void
      {
         var_1733 = param1.allowPaste;
      }
      
      private function onChatInputUpdate(param1:RoomWidgetChatInputContentUpdateEvent) : void
      {
         var _loc2_:String = "";
         switch(param1.messageType)
         {
            case RoomWidgetChatInputContentUpdateEvent.const_920:
               _loc2_ = localizations.getKey("widgets.chatinput.mode.whisper",":tell");
               _visualization.displaySpecialChatMessage(_loc2_,param1.userName);
               break;
            case RoomWidgetChatInputContentUpdateEvent.const_1352:
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_332,onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_212,onRoomObjectDeselected);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_273,onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetChatInputContentUpdateEvent.const_579,onChatInputUpdate);
         param1.removeEventListener(RoomWidgetChatInputDisplayEvent.const_541,onSettings);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_229,onUserInfo);
      }
      
      private function onRoomObjectDeselected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var_1172 = "";
      }
      
      override public function dispose() : void
      {
         if(_visualization != null)
         {
            _visualization.dispose();
            _visualization = null;
         }
         var_21.removeUpdateReceiver(this);
         _disposed = true;
         super.dispose();
      }
      
      private function checkForFlooding() : Boolean
      {
         if(var_805)
         {
            return true;
         }
         var _loc1_:int = getTimer();
         if(var_402 == -1)
         {
            var_402 = 0;
            var_1173 = _loc1_;
         }
         else
         {
            ++var_402;
         }
         if(var_402 > const_1052)
         {
            if(_loc1_ < var_1173 + const_1053)
            {
               var_805 = true;
               var_670 = const_1051 / 1000;
               Logger.log("Enabling flood blocking");
               var_804 = new Timer(1000,var_670);
               var_804.addEventListener(TimerEvent.TIMER,onReleaseTimerTick);
               var_804.addEventListener(TimerEvent.TIMER_COMPLETE,onReleaseTimerComplete);
               var_804.start();
               if(_visualization != null)
               {
                  _visualization.showFloodBlocking(var_670);
               }
               return true;
            }
            var_402 = -1;
         }
         return false;
      }
      
      public function triggerManualCrash() : void
      {
         var_1174 = true;
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_313,param1.id,param1.category);
      }
      
      public function get selectedUserName() : String
      {
         return var_1172;
      }
      
      private function refreshWindowPosition() : void
      {
         if(_visualization == null)
         {
            return;
         }
         var _loc1_:RoomWidgetChatInputWidgetMessage = new RoomWidgetChatInputWidgetMessage(RoomWidgetChatInputWidgetMessage.const_689,_visualization.window);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
   }
}
