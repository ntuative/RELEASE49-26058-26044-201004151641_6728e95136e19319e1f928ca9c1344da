package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1204:int = 4;
      
      public static const const_692:int = 3;
      
      public static const const_665:int = 2;
      
      public static const const_945:int = 1;
       
      
      private var var_1716:String;
      
      private var _disposed:Boolean;
      
      private var var_1718:int;
      
      private var var_1714:Boolean;
      
      private var var_781:String;
      
      private var var_793:PublicRoomData;
      
      private var var_1715:int;
      
      private var _index:int;
      
      private var var_1717:String;
      
      private var _type:int;
      
      private var var_1719:String;
      
      private var var_792:GuestRoomData;
      
      private var var_1713:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1716 = param1.readString();
         var_1713 = param1.readString();
         var_1714 = param1.readInteger() == 1;
         var_1717 = param1.readString();
         var_781 = param1.readString();
         var_1715 = param1.readInteger();
         var_1718 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_945)
         {
            var_1719 = param1.readString();
         }
         else if(_type == const_692)
         {
            var_793 = new PublicRoomData(param1);
         }
         else if(_type == const_665)
         {
            var_792 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1715;
      }
      
      public function get popupCaption() : String
      {
         return var_1716;
      }
      
      public function get userCount() : int
      {
         return var_1718;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1714;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_945)
         {
            return 0;
         }
         if(this.type == const_665)
         {
            return this.var_792.maxUserCount;
         }
         if(this.type == const_692)
         {
            return this.var_793.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1713;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_792 != null)
         {
            this.var_792.dispose();
            this.var_792 = null;
         }
         if(this.var_793 != null)
         {
            this.var_793.dispose();
            this.var_793 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_792;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1717;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_793;
      }
      
      public function get picRef() : String
      {
         return var_781;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1719;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
