package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_2047:Boolean;
      
      private var var_1515:Array;
      
      private var var_2045:Boolean;
      
      private var var_2046:Boolean;
      
      private var var_2051:Boolean;
      
      private var var_148:Array;
      
      private var var_2048:Boolean;
      
      private var var_2050:Boolean;
      
      private var var_1514:Array;
      
      private var var_2049:Boolean;
      
      private var var_2052:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_2052;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2047;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2045;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2048;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2050;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1515;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_148 = [];
         var_1515 = [];
         _roomMessageTemplates = [];
         var_1514 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_148.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1515.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1514.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2048 = param1.readBoolean();
         var_2051 = param1.readBoolean();
         var_2045 = param1.readBoolean();
         var_2046 = param1.readBoolean();
         var_2052 = param1.readBoolean();
         var_2050 = param1.readBoolean();
         var_2047 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_2049 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2046;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1514;
      }
      
      public function get issues() : Array
      {
         return var_148;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2049;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2051;
      }
   }
}
