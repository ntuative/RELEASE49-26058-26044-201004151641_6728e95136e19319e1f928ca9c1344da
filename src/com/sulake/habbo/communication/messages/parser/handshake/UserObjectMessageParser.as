package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_293:String;
      
      private var var_2324:String;
      
      private var var_2323:int;
      
      private var var_2325:int;
      
      private var var_608:String;
      
      private var var_1240:String;
      
      private var _name:String;
      
      private var var_526:int;
      
      private var var_881:int;
      
      private var var_2326:int;
      
      private var var_2141:int;
      
      private var var_2322:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2325;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1240;
      }
      
      public function get customData() : String
      {
         return this.var_2324;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_526;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2323;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2322;
      }
      
      public function get figure() : String
      {
         return this.var_293;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2141;
      }
      
      public function get sex() : String
      {
         return this.var_608;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_293 = param1.readString();
         this.var_608 = param1.readString();
         this.var_2324 = param1.readString();
         this.var_1240 = param1.readString();
         this.var_2326 = param1.readInteger();
         this.var_2322 = param1.readString();
         this.var_2323 = param1.readInteger();
         this.var_2325 = param1.readInteger();
         this.var_2141 = param1.readInteger();
         this.var_881 = param1.readInteger();
         this.var_526 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2326;
      }
      
      public function get respectLeft() : int
      {
         return this.var_881;
      }
   }
}
