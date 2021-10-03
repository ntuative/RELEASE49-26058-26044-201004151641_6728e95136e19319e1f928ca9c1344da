package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1687:int;
      
      private var var_293:String;
      
      private var var_1653:int;
      
      private var var_1688:int;
      
      private var var_1693:int;
      
      private var var_1686:int;
      
      private var _nutrition:int;
      
      private var var_1138:int;
      
      private var var_1691:int;
      
      private var var_1692:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1689:int;
      
      private var var_1690:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1653;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1686;
      }
      
      public function flush() : Boolean
      {
         var_1138 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1691;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1692;
      }
      
      public function get maxNutrition() : int
      {
         return var_1690;
      }
      
      public function get figure() : String
      {
         return var_293;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1688;
      }
      
      public function get petId() : int
      {
         return var_1138;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1138 = param1.readInteger();
         _name = param1.readString();
         var_1653 = param1.readInteger();
         var_1691 = param1.readInteger();
         var_1693 = param1.readInteger();
         var_1692 = param1.readInteger();
         _energy = param1.readInteger();
         var_1686 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1690 = param1.readInteger();
         var_293 = param1.readString();
         var_1688 = param1.readInteger();
         var_1689 = param1.readInteger();
         var_1687 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1693;
      }
      
      public function get ownerId() : int
      {
         return var_1689;
      }
      
      public function get age() : int
      {
         return var_1687;
      }
   }
}
