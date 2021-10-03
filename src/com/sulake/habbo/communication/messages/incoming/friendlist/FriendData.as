package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_293:String;
      
      private var var_1243:String;
      
      private var var_1241:String;
      
      private var var_1222:int;
      
      private var var_624:int;
      
      private var var_1240:String;
      
      private var _name:String;
      
      private var var_1242:Boolean;
      
      private var var_691:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_624 = param1.readInteger();
         this.var_691 = param1.readBoolean();
         this.var_1242 = param1.readBoolean();
         this.var_293 = param1.readString();
         this.var_1222 = param1.readInteger();
         this.var_1241 = param1.readString();
         this.var_1243 = param1.readString();
         this.var_1240 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_624;
      }
      
      public function get realName() : String
      {
         return var_1240;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1241;
      }
      
      public function get categoryId() : int
      {
         return var_1222;
      }
      
      public function get online() : Boolean
      {
         return var_691;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1242;
      }
      
      public function get lastAccess() : String
      {
         return var_1243;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_293;
      }
   }
}
