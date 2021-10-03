package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1385:String;
      
      private var var_1059:String;
      
      private var var_2024:Boolean;
      
      private var var_1585:int;
      
      private var var_1772:int;
      
      private var var_2023:Boolean;
      
      private var var_1571:String = "";
      
      private var var_1773:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1192:int;
      
      private var var_1774:Boolean;
      
      private var var_1775:int = -1;
      
      private var var_1670:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1772 = param1;
         var_1059 = param2;
         _objId = param3;
         var_1192 = param4;
         _category = param5;
         var_1385 = param6;
         var_2024 = param7;
         var_1773 = param8;
         var_1774 = param9;
         var_2023 = param10;
         var_1670 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1571;
      }
      
      public function get extra() : int
      {
         return var_1585;
      }
      
      public function get classId() : int
      {
         return var_1192;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2023;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2024;
      }
      
      public function get stripId() : int
      {
         return var_1772;
      }
      
      public function get stuffData() : String
      {
         return var_1385;
      }
      
      public function get songId() : int
      {
         return var_1775;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1571 = param1;
         var_1585 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1059;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1670;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1774;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1773;
      }
   }
}
