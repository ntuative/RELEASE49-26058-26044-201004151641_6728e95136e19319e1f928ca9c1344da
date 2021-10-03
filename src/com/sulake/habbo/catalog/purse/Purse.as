package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1475:int = 0;
      
      private var var_1939:int = 0;
      
      private var var_1840:Boolean = false;
      
      private var var_1938:int = 0;
      
      private var var_1476:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubPeriods() : int
      {
         return var_1476;
      }
      
      public function get clubDays() : int
      {
         return var_1475;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1939 = param1;
      }
      
      public function get pixels() : int
      {
         return var_1939;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1475 > 0 || var_1476 > 0;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1475 = param1;
      }
      
      public function get credits() : int
      {
         return var_1938;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1840;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1840 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1938 = param1;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1476 = param1;
      }
   }
}
