package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1430:String;
      
      private var var_944:String;
      
      private var var_1429:String;
      
      private var var_1428:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1428 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1430 = _loc5_[0];
         var_1429 = _loc5_[1];
         _name = param2;
         var_944 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1430;
      }
      
      public function get languageCode() : String
      {
         return var_1428;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_944;
      }
      
      public function get encoding() : String
      {
         return var_1429;
      }
      
      public function get id() : String
      {
         return var_1428 + "_" + var_1430 + "." + var_1429;
      }
   }
}
