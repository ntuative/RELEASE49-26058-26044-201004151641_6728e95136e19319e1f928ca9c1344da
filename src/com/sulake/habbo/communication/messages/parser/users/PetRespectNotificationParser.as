package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1688:int;
      
      private var var_1190:PetData;
      
      private var var_1793:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1688;
      }
      
      public function get petData() : PetData
      {
         return var_1190;
      }
      
      public function flush() : Boolean
      {
         var_1190 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1793;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1688 = param1.readInteger();
         var_1793 = param1.readInteger();
         var_1190 = new PetData(param1);
         return true;
      }
   }
}
