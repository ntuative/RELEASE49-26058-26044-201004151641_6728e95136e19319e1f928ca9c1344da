package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1807:Class;
      
      private var var_1805:Class;
      
      private var var_1806:String;
      
      private var var_1194:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1806 = param1;
         var_1805 = param2;
         var_1807 = param3;
         if(rest == null)
         {
            var_1194 = new Array();
         }
         else
         {
            var_1194 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1807;
      }
      
      public function get assetClass() : Class
      {
         return var_1805;
      }
      
      public function get mimeType() : String
      {
         return var_1806;
      }
      
      public function get fileTypes() : Array
      {
         return var_1194;
      }
   }
}
