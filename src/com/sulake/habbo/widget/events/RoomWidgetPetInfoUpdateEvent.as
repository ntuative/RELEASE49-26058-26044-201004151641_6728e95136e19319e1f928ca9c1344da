package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_137:String = "RWPIUE_PET_INFO";
       
      
      private var var_1653:int;
      
      private var var_1693:int;
      
      private var var_1987:int;
      
      private var _nutrition:int;
      
      private var var_1985:int;
      
      private var var_1988:int;
      
      private var _energy:int;
      
      private var var_970:int;
      
      private var var_1986:int;
      
      private var var_2060:int;
      
      private var var_1687:int;
      
      private var _id:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2059:int;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_2058:Boolean;
      
      private var _name:String;
      
      private var var_526:int;
      
      private var var_1689:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.const_137,param10,param11);
         var_970 = param1;
         var_2059 = param2;
         _name = param3;
         _id = param4;
         _image = param5;
         var_2058 = param6;
         var_1689 = param7;
         _ownerName = param8;
         var_2060 = param9;
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_2058;
      }
      
      public function get level() : int
      {
         return var_1653;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1988 = param1;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set level(param1:int) : void
      {
         var_1653 = param1;
      }
      
      public function get petRace() : int
      {
         return var_2059;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_526 = param1;
      }
      
      public function get experienceMax() : int
      {
         return var_1985;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get nutritionMax() : int
      {
         return var_1987;
      }
      
      public function get ownerId() : int
      {
         return var_1689;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1985 = param1;
      }
      
      public function get roomIndex() : int
      {
         return var_2060;
      }
      
      public function get energyMax() : int
      {
         return var_1986;
      }
      
      public function get levelMax() : int
      {
         return var_1988;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get petRespectLeft() : int
      {
         return var_526;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         _canOwnerBeKicked = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1987 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set petRespect(param1:int) : void
      {
         _petRespect = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1693 = param1;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1693;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1986 = param1;
      }
      
      public function get petType() : int
      {
         return var_970;
      }
      
      public function set age(param1:int) : void
      {
         var_1687 = param1;
      }
      
      public function get age() : int
      {
         return var_1687;
      }
   }
}
