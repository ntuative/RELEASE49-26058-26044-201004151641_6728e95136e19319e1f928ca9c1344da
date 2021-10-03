package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_440:uint;
      
      private var var_1078:IUnknown;
      
      private var var_1318:String;
      
      private var var_1077:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1077 = param1;
         var_1318 = getQualifiedClassName(var_1077);
         var_1078 = param2;
         var_440 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1077;
      }
      
      public function get disposed() : Boolean
      {
         return var_1078 == null;
      }
      
      public function get references() : uint
      {
         return var_440;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_440) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1078;
      }
      
      public function get iis() : String
      {
         return var_1318;
      }
      
      public function reserve() : uint
      {
         return ++var_440;
      }
      
      public function dispose() : void
      {
         var_1077 = null;
         var_1318 = null;
         var_1078 = null;
         var_440 = 0;
      }
   }
}
