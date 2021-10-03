package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_446:int = 0;
      
      public static const const_133:int = 2;
      
      public static const const_160:int = 1;
      
      public static const const_547:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1643:Boolean;
      
      private var var_1639:Boolean;
      
      private var var_1830:int;
      
      private var var_1640:Array;
      
      private var var_1831:int;
      
      private var var_1644:Boolean;
      
      private var var_1169:String;
      
      private var var_1641:int;
      
      private var var_1642:int;
      
      private var var_1222:int;
      
      private var _roomId:int;
      
      private var var_640:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1641;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1641 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_640;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1644;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1831 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1640 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_640 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1643;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1639;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1830;
      }
      
      public function get categoryId() : int
      {
         return var_1222;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1644 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_1831;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1640;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1642 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1643 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1639 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1830 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1642;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1222 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1169 = param1;
      }
      
      public function get description() : String
      {
         return var_1169;
      }
   }
}
