package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_146:int = 1;
      
      public static const const_1180:int = 3;
      
      public static const const_420:int = 2;
       
      
      private var var_2069:int;
      
      private var var_2068:int;
      
      private var var_2065:int;
      
      private var var_1761:int;
      
      private var var_32:int;
      
      private var var_401:int;
      
      private var var_1379:int;
      
      private var var_1623:int;
      
      private var var_1096:int;
      
      private var _roomResources:String;
      
      private var var_1777:int;
      
      private var var_2067:int;
      
      private var var_2066:String;
      
      private var var_1624:String;
      
      private var var_2072:int = 0;
      
      private var var_1363:String;
      
      private var _message:String;
      
      private var var_1893:int;
      
      private var var_2070:String;
      
      private var var_1222:int;
      
      private var var_712:String;
      
      private var var_2071:String;
      
      private var var_1527:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1096 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2072 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2067;
      }
      
      public function set roomName(param1:String) : void
      {
         var_712 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1777 = param1;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_712;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1761 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_32 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_2068;
      }
      
      public function get priority() : int
      {
         return var_2069 + var_2072;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1623 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1624;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1527) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1222;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2067 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1379;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2066 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1777;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1761;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2071 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1363 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1623;
      }
      
      public function set priority(param1:int) : void
      {
         var_2069 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_2068 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2066;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2065 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1624 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1893 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1363;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1379 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2065;
      }
      
      public function set flatId(param1:int) : void
      {
         var_401 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1222 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1527 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1893;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2070 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1527;
      }
      
      public function get reportedUserId() : int
      {
         return var_1096;
      }
      
      public function get flatId() : int
      {
         return var_401;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2071;
      }
      
      public function get reporterUserName() : String
      {
         return var_2070;
      }
   }
}
