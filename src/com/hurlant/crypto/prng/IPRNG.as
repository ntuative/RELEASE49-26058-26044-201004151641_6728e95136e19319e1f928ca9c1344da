package com.hurlant.crypto.prng
{
   import flash.utils.ByteArray;
   
   public interface IPRNG
   {
       
      
      function init(param1:ByteArray) : void;
      
      function next() : uint;
      
      function method_11() : uint;
      
      function toString() : String;
      
      function dispose() : void;
   }
}
