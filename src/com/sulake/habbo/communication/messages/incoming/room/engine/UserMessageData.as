package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1387:String = "F";
      
      public static const const_876:String = "M";
       
      
      private var var_83:Number = 0;
      
      private var var_293:String = "";
      
      private var var_2020:int = 0;
      
      private var var_2017:String = "";
      
      private var var_2019:int = 0;
      
      private var var_1823:int = 0;
      
      private var var_2018:String = "";
      
      private var var_608:String = "";
      
      private var _id:int = 0;
      
      private var var_196:Boolean = false;
      
      private var var_211:int = 0;
      
      private var var_2016:String = "";
      
      private var _name:String = "";
      
      private var var_1824:int = 0;
      
      private var _y:Number = 0;
      
      private var var_84:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_211;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_196)
         {
            var_211 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_196)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2020;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_196)
         {
            var_2019 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2016;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_196)
         {
            var_2018 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_196)
         {
            var_2016 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_196)
         {
            var_1823 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_196)
         {
            var_293 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_196)
         {
            var_2020 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_196)
         {
            var_608 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_2019;
      }
      
      public function get groupID() : String
      {
         return var_2018;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_196)
         {
            var_1824 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_196)
         {
            var_2017 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_196 = true;
      }
      
      public function get sex() : String
      {
         return var_608;
      }
      
      public function get figure() : String
      {
         return var_293;
      }
      
      public function get webID() : int
      {
         return var_1824;
      }
      
      public function get custom() : String
      {
         return var_2017;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_196)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_196)
         {
            var_84 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_196)
         {
            var_83 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1823;
      }
   }
}
