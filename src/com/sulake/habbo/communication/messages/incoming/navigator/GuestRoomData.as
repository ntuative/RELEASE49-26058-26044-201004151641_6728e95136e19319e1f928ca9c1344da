package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1718:int;
      
      private var var_1834:String;
      
      private var var_1838:int;
      
      private var var_1839:int;
      
      private var var_749:Boolean;
      
      private var var_1644:Boolean;
      
      private var var_401:int;
      
      private var var_1169:String;
      
      private var var_1642:int;
      
      private var var_1222:int;
      
      private var _ownerName:String;
      
      private var var_712:String;
      
      private var var_1837:int;
      
      private var var_1836:RoomThumbnailData;
      
      private var var_1835:Boolean;
      
      private var var_640:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_640 = new Array();
         super();
         var_401 = param1.readInteger();
         var_749 = param1.readBoolean();
         var_712 = param1.readString();
         _ownerName = param1.readString();
         var_1642 = param1.readInteger();
         var_1718 = param1.readInteger();
         var_1837 = param1.readInteger();
         var_1169 = param1.readString();
         var_1838 = param1.readInteger();
         var_1835 = param1.readBoolean();
         var_1839 = param1.readInteger();
         var_1222 = param1.readInteger();
         var_1834 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_640.push(_loc4_);
            _loc3_++;
         }
         var_1836 = new RoomThumbnailData(param1);
         var_1644 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1837;
      }
      
      public function get roomName() : String
      {
         return var_712;
      }
      
      public function get userCount() : int
      {
         return var_1718;
      }
      
      public function get score() : int
      {
         return var_1839;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1834;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1835;
      }
      
      public function get tags() : Array
      {
         return var_640;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1644;
      }
      
      public function get event() : Boolean
      {
         return var_749;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_640 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1222;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1838;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1836;
      }
      
      public function get doorMode() : int
      {
         return var_1642;
      }
      
      public function get flatId() : int
      {
         return var_401;
      }
      
      public function get description() : String
      {
         return var_1169;
      }
   }
}
