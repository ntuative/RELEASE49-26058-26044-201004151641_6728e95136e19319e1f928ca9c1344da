package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_229:String = "RWUIUE_PEER";
      
      public static const const_225:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1296:String = "BOT";
      
      public static const const_975:int = 2;
      
      public static const const_1315:int = 0;
      
      public static const const_1017:int = 3;
       
      
      private var var_293:String = "";
      
      private var var_1241:String = "";
      
      private var var_1819:Boolean = false;
      
      private var var_1823:int = 0;
      
      private var var_1663:int = 0;
      
      private var var_1825:Boolean = false;
      
      private var var_1240:String = "";
      
      private var var_1829:Boolean = false;
      
      private var var_881:int = 0;
      
      private var var_1827:Boolean = true;
      
      private var var_980:int = 0;
      
      private var var_1826:Boolean = false;
      
      private var var_1323:Boolean = false;
      
      private var var_1822:Boolean = false;
      
      private var var_1664:int = 0;
      
      private var var_1820:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_282:Array;
      
      private var var_1326:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1824:int = 0;
      
      private var var_1828:Boolean = false;
      
      private var var_1821:int = 0;
      
      private var var_1662:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_282 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1663;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1663 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1819;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1827;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1827 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1829 = param1;
      }
      
      public function get motto() : String
      {
         return var_1241;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1826 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1323;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1241 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1828;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1662;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1323 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1820;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1664 = param1;
      }
      
      public function get badges() : Array
      {
         return var_282;
      }
      
      public function get amIController() : Boolean
      {
         return var_1825;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1825 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1828 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1821 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1662 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1240 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1829;
      }
      
      public function set figure(param1:String) : void
      {
         var_293 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1664;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1326;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1826;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_881 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1821;
      }
      
      public function get realName() : String
      {
         return var_1240;
      }
      
      public function get figure() : String
      {
         return var_293;
      }
      
      public function set webID(param1:int) : void
      {
         var_1824 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_282 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1822 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1820 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_881;
      }
      
      public function get webID() : int
      {
         return var_1824;
      }
      
      public function set groupId(param1:int) : void
      {
         var_980 = param1;
      }
      
      public function get xp() : int
      {
         return var_1823;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1819 = param1;
      }
      
      public function get groupId() : int
      {
         return var_980;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1822;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1326 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1823 = param1;
      }
   }
}
