package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2340:Boolean;
      
      private var var_2342:int;
      
      private var var_2343:Boolean;
      
      private var var_1468:String;
      
      private var var_1240:String;
      
      private var var_2035:int;
      
      private var var_1912:String;
      
      private var var_2341:String;
      
      private var var_1911:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2035 = param1.readInteger();
         this.var_1468 = param1.readString();
         this.var_1912 = param1.readString();
         this.var_2340 = param1.readBoolean();
         this.var_2343 = param1.readBoolean();
         param1.readString();
         this.var_2342 = param1.readInteger();
         this.var_1911 = param1.readString();
         this.var_2341 = param1.readString();
         this.var_1240 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1240;
      }
      
      public function get avatarName() : String
      {
         return this.var_1468;
      }
      
      public function get avatarId() : int
      {
         return this.var_2035;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2340;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2341;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1911;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2343;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1912;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2342;
      }
   }
}
