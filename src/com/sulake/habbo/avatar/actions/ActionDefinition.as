package com.sulake.habbo.avatar.actions
{
   import com.sulake.core.utils.Map;
   import flash.utils.Dictionary;
   
   public class ActionDefinition implements IActionDefinition
   {
       
      
      private var var_1123:Array;
      
      private var var_1709:String;
      
      private var var_32:String;
      
      private var var_1707:Boolean = false;
      
      private var var_1420:Dictionary;
      
      private var var_1708:int;
      
      private var var_1155:String;
      
      private var var_1710:Boolean = false;
      
      private var _id:String;
      
      private var var_1712:Boolean = false;
      
      private var var_558:Map;
      
      private var var_1705:String;
      
      private var var_1706:String = "";
      
      private var var_1711:String;
      
      private var _types:Dictionary;
      
      public function ActionDefinition(param1:XML)
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var_1123 = new Array();
         _types = new Dictionary();
         var_1420 = new Dictionary();
         super();
         _id = String(param1.@id);
         var_32 = String(param1.@state);
         var_1708 = parseInt(param1.@precedence);
         var_1709 = String(param1.@activepartset);
         var_1711 = String(param1.@assetpartdefinition);
         var_1705 = String(param1.@lay);
         var_1155 = String(param1.@geometrytype);
         var_1707 = Boolean(parseInt(param1.@main));
         var_1710 = Boolean(parseInt(param1.@const_1025));
         var_1712 = Boolean(parseInt(param1.@animation));
         var _loc2_:String = String(param1.@prevents);
         if(_loc2_ != "")
         {
            var_1123 = _loc2_.split(",");
         }
         for each(_loc3_ in param1.param)
         {
            _loc5_ = String(_loc3_.@id);
            _loc6_ = String(_loc3_.@value);
            if(_loc5_ == "default")
            {
               var_1706 = _loc6_;
            }
            else
            {
               var_1420[_loc5_] = _loc6_;
            }
         }
         for each(_loc4_ in param1.type)
         {
            _loc7_ = String(_loc4_.@id);
            _types[_loc7_] = new ActionType(_loc4_);
         }
      }
      
      public function setOffsets(param1:String, param2:int, param3:Array) : void
      {
         if(var_558 == null)
         {
            var_558 = new Map();
         }
         if(var_558.getValue(param1) == null)
         {
            var_558.add(param1,new Map());
         }
         var _loc4_:Map = var_558.getValue(param1);
         _loc4_.add(param2,param3);
      }
      
      public function get activePartSet() : String
      {
         return var_1709;
      }
      
      public function get precedence() : int
      {
         return var_1708;
      }
      
      public function get state() : String
      {
         return var_32;
      }
      
      public function getOffsets(param1:String, param2:int) : Array
      {
         if(var_558 == null)
         {
            return null;
         }
         var _loc3_:Map = var_558.getValue(param1) as Map;
         if(_loc3_ == null)
         {
            return null;
         }
         return _loc3_.getValue(param2) as Array;
      }
      
      public function get isAnimation() : Boolean
      {
         return var_1712;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get isMain() : Boolean
      {
         return var_1707;
      }
      
      public function get assetPartDefinition() : String
      {
         return var_1711;
      }
      
      public function get isDefault() : Boolean
      {
         return var_1710;
      }
      
      public function get lay() : String
      {
         return var_1705;
      }
      
      public function getParameterValue(param1:String) : String
      {
         if(param1 == "")
         {
            return "";
         }
         var _loc2_:String = "null";
         if(_loc2_ == null)
         {
            _loc2_ = var_1706;
         }
         return _loc2_;
      }
      
      public function get geometryType() : String
      {
         return var_1155;
      }
      
      public function getPrevents(param1:String = "") : Array
      {
         return var_1123.concat(getTypePrevents(param1));
      }
      
      private function getTypePrevents(param1:String) : Array
      {
         if(param1 == "")
         {
            return [];
         }
         var _loc2_:ActionType = _types[param1];
         if(_loc2_ != null)
         {
            return _loc2_.prevents;
         }
         return [];
      }
      
      public function toString() : String
      {
         return "[ActionDefinition]\nid:           " + id + "\n" + "state:        " + state + "\n" + "main:         " + isMain + "\n" + "default:      " + isDefault + "\n" + "geometry:     " + state + "\n" + "precedence:   " + precedence + "\n" + "activepartset:" + activePartSet + "\n" + "activepartdef:" + assetPartDefinition + "";
      }
   }
}
