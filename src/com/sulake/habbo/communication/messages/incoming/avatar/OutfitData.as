package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2073:String;
      
      private var var_624:String;
      
      private var var_1571:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1571 = param1.readInteger();
         var_2073 = param1.readString();
         var_624 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_624;
      }
      
      public function get figureString() : String
      {
         return var_2073;
      }
      
      public function get slotId() : int
      {
         return var_1571;
      }
   }
}
