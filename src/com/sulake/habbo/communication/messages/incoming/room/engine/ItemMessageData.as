package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_84:Number = 0;
      
      private var _data:String = "";
      
      private var var_1585:int = 0;
      
      private var var_32:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1800:Boolean = false;
      
      private var var_2371:String = "";
      
      private var _id:int = 0;
      
      private var var_196:Boolean = false;
      
      private var var_211:String = "";
      
      private var var_1801:int = 0;
      
      private var var_1802:int = 0;
      
      private var var_1799:int = 0;
      
      private var var_1803:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1800 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_196)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1800;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_196)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_211;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_196)
         {
            var_1799 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_196)
         {
            var_1801 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_196)
         {
            var_1802 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_196)
         {
            var_211 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_196)
         {
            var_1803 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_196)
         {
            var_32 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1799;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_196)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1801;
      }
      
      public function get wallY() : Number
      {
         return var_1802;
      }
      
      public function get localY() : Number
      {
         return var_1803;
      }
      
      public function setReadOnly() : void
      {
         var_196 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_196)
         {
            var_84 = param1;
         }
      }
   }
}
