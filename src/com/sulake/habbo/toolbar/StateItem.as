package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1202:Boolean;
      
      private var var_1636:String;
      
      private var _frames:XMLList;
      
      private var var_1018:String = "-1";
      
      private var var_641:String;
      
      private var var_162:int = 120;
      
      private var var_1129:String = "-1";
      
      private var var_1130:String;
      
      private var var_1635:Boolean;
      
      private var var_1401:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1202 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1635 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_162 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1130 = param1.@namebase;
         }
         else
         {
            var_1130 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1018 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1129 = param1.@nextState;
         }
         else
         {
            var_1129 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1401 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1636 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_641 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1018 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1635;
      }
      
      public function get defaultState() : String
      {
         return var_1401;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1401 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1636;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_162;
      }
      
      public function get loop() : Boolean
      {
         return var_1202;
      }
      
      public function get nextState() : String
      {
         return var_1129;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_641;
      }
      
      public function get stateOver() : String
      {
         return var_1018;
      }
      
      public function get nameBase() : String
      {
         return var_1130;
      }
   }
}
