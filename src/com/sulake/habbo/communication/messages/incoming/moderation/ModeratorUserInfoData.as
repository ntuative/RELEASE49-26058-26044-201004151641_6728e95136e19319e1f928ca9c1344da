package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2214:int;
      
      private var var_2213:int;
      
      private var var_2212:int;
      
      private var _userName:String;
      
      private var var_2215:int;
      
      private var var_2216:int;
      
      private var var_2217:int;
      
      private var _userId:int;
      
      private var var_691:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2216 = param1.readInteger();
         var_2215 = param1.readInteger();
         var_691 = param1.readBoolean();
         var_2212 = param1.readInteger();
         var_2213 = param1.readInteger();
         var_2214 = param1.readInteger();
         var_2217 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2217;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_691;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2215;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2213;
      }
      
      public function get cautionCount() : int
      {
         return var_2214;
      }
      
      public function get cfhCount() : int
      {
         return var_2212;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2216;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
