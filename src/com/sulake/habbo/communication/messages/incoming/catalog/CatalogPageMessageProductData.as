package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_210:String = "e";
      
      public static const const_80:String = "i";
      
      public static const const_84:String = "s";
       
      
      private var var_986:String;
      
      private var var_1185:String;
      
      private var var_1183:int;
      
      private var var_2112:int;
      
      private var var_985:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1185 = param1.readString();
         var_2112 = param1.readInteger();
         var_986 = param1.readString();
         var_985 = param1.readInteger();
         var_1183 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_985;
      }
      
      public function get productType() : String
      {
         return var_1185;
      }
      
      public function get expiration() : int
      {
         return var_1183;
      }
      
      public function get furniClassId() : int
      {
         return var_2112;
      }
      
      public function get extraParam() : String
      {
         return var_986;
      }
   }
}
