package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_690:IWindowContainer;
      
      private var var_1006:ITextWindow;
      
      private var var_188:RoomSettingsCtrl;
      
      private var var_1211:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1212:ITextWindow;
      
      private var var_348:IWindowContainer;
      
      private var var_1902:IWindowContainer;
      
      private var var_1899:ITextWindow;
      
      private var var_830:IWindowContainer;
      
      private var var_1463:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_712:ITextWindow;
      
      private var var_1464:IWindowContainer;
      
      private var var_1214:IWindowContainer;
      
      private var var_831:ITextWindow;
      
      private var var_1008:ITextFieldWindow;
      
      private var var_298:IWindowContainer;
      
      private var var_829:ITextWindow;
      
      private var var_1465:IButtonWindow;
      
      private var var_1007:ITextWindow;
      
      private var var_2313:int;
      
      private var var_1215:IContainerButtonWindow;
      
      private var var_828:IWindowContainer;
      
      private var var_1217:ITextWindow;
      
      private var var_1216:IContainerButtonWindow;
      
      private var var_1466:ITextWindow;
      
      private var var_1467:IButtonWindow;
      
      private var var_815:TagRenderer;
      
      private var var_1900:ITextWindow;
      
      private var var_349:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_689:ITextWindow;
      
      private var var_256:RoomThumbnailCtrl;
      
      private var var_1213:IContainerButtonWindow;
      
      private var var_1901:IWindowContainer;
      
      private var var_257:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_349 = new RoomEventViewCtrl(_navigator);
         var_188 = new RoomSettingsCtrl(_navigator,this,true);
         var_256 = new RoomThumbnailCtrl(_navigator);
         var_815 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_188);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_188.active = true;
         this.var_349.active = false;
         this.var_256.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1463.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1467.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1464.visible = Util.hasVisibleChildren(var_1464);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_712.text = param1.roomName;
         var_712.height = NaN;
         _ownerName.text = param1.ownerName;
         var_831.text = param1.description;
         var_815.refreshTags(var_348,param1.tags);
         var_831.visible = false;
         if(param1.description != "")
         {
            var_831.height = NaN;
            var_831.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_348,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_348,"thumb_down",_loc3_,onThumbDown,0);
         var_1899.visible = _loc3_;
         var_829.visible = !_loc3_;
         var_1466.visible = !_loc3_;
         var_1466.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_348,"home",param2,null,0);
         _navigator.refreshButton(var_348,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_348,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_712.y,0);
         var_348.visible = true;
         var_348.height = Util.getLowestPoint(var_348);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_415,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1465.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1211.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1213.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1215.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1216.visible = _navigator.data.canEditRoomSettings && param1;
         var_1214.visible = Util.hasVisibleChildren(var_1214);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_349.active = false;
         this.var_188.active = false;
         this.var_256.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_349.active = false;
         this.var_188.active = false;
         this.var_256.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_415,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_298);
         var_298.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_188.refresh(var_298);
         this.var_256.refresh(var_298);
         Util.moveChildrenToColumn(var_298,["room_details","room_buttons"],0,2);
         var_298.height = Util.getLowestPoint(var_298);
         var_298.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1008.setSelection(0,var_1008.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_257);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_349.refresh(var_257);
         if(Util.hasVisibleChildren(var_257) && !this.var_256.active)
         {
            Util.moveChildrenToColumn(var_257,["event_details","event_buttons"],0,2);
            var_257.height = Util.getLowestPoint(var_257);
            var_257.visible = true;
         }
         else
         {
            var_257.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_349.active = true;
         this.var_188.active = false;
         this.var_256.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function method_9(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1006.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1006.height = NaN;
         var_1212.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1212.height = NaN;
         Util.moveChildrenToColumn(var_690,["public_space_name","public_space_desc"],var_1006.y,0);
         var_690.visible = true;
         var_690.height = Math.max(86,Util.getLowestPoint(var_690));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","HabboNavigatorCom_tag_m_png") == "true";
         if(_loc1_ && true && true && true)
         {
            var_828.visible = true;
            var_1008.text = this.getEmbedData();
         }
         else
         {
            var_828.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_188.load(param1);
         this.var_188.active = true;
         this.var_349.active = false;
         this.var_256.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_188.active = false;
         this.var_349.active = false;
         this.var_256.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_73,false);
         _window.setParamFlag(HabboWindowParam.const_1159,true);
         _window.visible = false;
         var_298 = IWindowContainer(find("room_info"));
         var_348 = IWindowContainer(find("room_details"));
         var_690 = IWindowContainer(find("public_space_details"));
         var_1901 = IWindowContainer(find("owner_name_cont"));
         var_1902 = IWindowContainer(find("rating_cont"));
         var_1214 = IWindowContainer(find("room_buttons"));
         var_712 = ITextWindow(find("room_name"));
         var_1006 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_831 = ITextWindow(find("room_desc"));
         var_1212 = ITextWindow(find("public_space_desc"));
         var_1007 = ITextWindow(find("owner_caption"));
         var_829 = ITextWindow(find("rating_caption"));
         var_1899 = ITextWindow(find("rate_caption"));
         var_1466 = ITextWindow(find("rating_txt"));
         var_257 = IWindowContainer(find("event_info"));
         var_830 = IWindowContainer(find("event_details"));
         var_1464 = IWindowContainer(find("event_buttons"));
         var_1900 = ITextWindow(find("event_name"));
         var_689 = ITextWindow(find("event_desc"));
         var_1211 = IContainerButtonWindow(find("add_favourite_button"));
         var_1213 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1215 = IContainerButtonWindow(find("make_home_button"));
         var_1216 = IContainerButtonWindow(find("unmake_home_button"));
         var_1465 = IButtonWindow(find("room_settings_button"));
         var_1463 = IButtonWindow(find("create_event_button"));
         var_1467 = IButtonWindow(find("edit_event_button"));
         var_828 = IWindowContainer(find("embed_info"));
         var_1217 = ITextWindow(find("embed_info_txt"));
         var_1008 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1211,onAddFavouriteClick);
         Util.setProcDirectly(var_1213,method_9);
         Util.setProcDirectly(var_1465,onRoomSettingsClick);
         Util.setProcDirectly(var_1215,onMakeHomeClick);
         Util.setProcDirectly(var_1216,onUnmakeHomeClick);
         Util.setProcDirectly(var_1463,onEventSettingsClick);
         Util.setProcDirectly(var_1467,onEventSettingsClick);
         Util.setProcDirectly(var_1008,onEmbedSrcClick);
         _navigator.refreshButton(var_1211,"favourite",true,null,0);
         _navigator.refreshButton(var_1213,"favourite",true,null,0);
         _navigator.refreshButton(var_1215,"home",true,null,0);
         _navigator.refreshButton(var_1216,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_298,onHover);
         Util.setProcDirectly(var_257,onHover);
         var_1007.width = var_1007.textWidth;
         Util.moveChildrenToRow(var_1901,["owner_caption","owner_name"],var_1007.x,var_1007.y,3);
         var_829.width = var_829.textWidth;
         Util.moveChildrenToRow(var_1902,["rating_caption","rating_txt"],var_829.x,var_829.y,3);
         var_1217.height = NaN;
         Util.moveChildrenToColumn(var_828,["embed_info_txt","embed_src_txt"],var_1217.y,2);
         var_828.height = Util.getLowestPoint(var_828) + 5;
         var_2313 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1900.text = param1.eventName;
         var_689.text = param1.eventDescription;
         var_815.refreshTags(var_830,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_689.visible = false;
         if(param1.eventDescription != "")
         {
            var_689.height = NaN;
            var_689.y = Util.getLowestPoint(var_830) + 2;
            var_689.visible = true;
         }
         var_830.visible = true;
         var_830.height = Util.getLowestPoint(var_830);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_1018,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
