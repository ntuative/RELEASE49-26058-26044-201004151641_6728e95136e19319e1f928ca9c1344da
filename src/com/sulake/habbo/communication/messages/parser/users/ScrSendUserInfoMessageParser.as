package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1190:int = 2;
      
      public static const const_1622:int = 1;
       
      
      private var var_1843:int;
      
      private var var_1844:int;
      
      private var var_1840:Boolean;
      
      private var var_1845:int;
      
      private var var_1279:String;
      
      private var var_1841:Boolean;
      
      private var var_1842:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1844;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1840;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1842;
      }
      
      public function get memberPeriods() : int
      {
         return var_1845;
      }
      
      public function get productName() : String
      {
         return var_1279;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1841;
      }
      
      public function get responseType() : int
      {
         return var_1843;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1279 = param1.readString();
         var_1844 = param1.readInteger();
         var_1845 = param1.readInteger();
         var_1842 = param1.readInteger();
         var_1843 = param1.readInteger();
         var_1841 = param1.readBoolean();
         var_1840 = param1.readBoolean();
         return true;
      }
   }
}
