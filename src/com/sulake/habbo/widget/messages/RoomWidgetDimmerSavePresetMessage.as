package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_516:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1877:int;
      
      private var var_1879:int;
      
      private var var_2137:Boolean;
      
      private var var_1027:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_516);
         var_1879 = param1;
         var_1877 = param2;
         _color = param3;
         var_1027 = param4;
         var_2137 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1877;
      }
      
      public function get presetNumber() : int
      {
         return var_1879;
      }
      
      public function get brightness() : int
      {
         return var_1027;
      }
      
      public function get apply() : Boolean
      {
         return var_2137;
      }
   }
}
