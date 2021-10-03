package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_958:Boolean;
      
      private var _name:String;
      
      private var var_1744:String;
      
      private var var_957:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1744 = String(param1.@link);
         var_957 = Boolean(parseInt(param1.@fliph));
         var_958 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_957;
      }
      
      public function get flipV() : Boolean
      {
         return var_958;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1744;
      }
   }
}
