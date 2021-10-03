package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1718:int;
      
      private var var_2225:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_2225 = param1.readString();
         var_1718 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_2225;
      }
      
      public function get userCount() : int
      {
         return var_1718;
      }
   }
}
