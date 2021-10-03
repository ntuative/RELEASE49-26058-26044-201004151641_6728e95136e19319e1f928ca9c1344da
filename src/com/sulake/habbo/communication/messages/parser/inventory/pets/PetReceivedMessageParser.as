package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1101:PetData;
      
      private var var_1605:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1605 = param1.readBoolean();
         var_1101 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1605 + ", " + var_1101.id + ", " + var_1101.name + ", " + pet.figure + ", " + var_1101.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1605;
      }
      
      public function get pet() : PetData
      {
         return var_1101;
      }
   }
}
