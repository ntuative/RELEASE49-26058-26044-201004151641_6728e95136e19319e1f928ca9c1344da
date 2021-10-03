package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1048:Boolean;
      
      private var var_1047:Boolean;
      
      private var var_1046:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1048;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1047;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1046 = param1.readBoolean();
         var_1047 = param1.readBoolean();
         var_1048 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1046;
      }
      
      public function flush() : Boolean
      {
         var_1046 = false;
         var_1047 = false;
         var_1048 = false;
         return true;
      }
   }
}
