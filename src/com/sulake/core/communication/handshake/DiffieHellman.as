package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1273:BigInteger;
      
      private var var_607:BigInteger;
      
      private var var_1525:BigInteger;
      
      private var var_1526:BigInteger;
      
      private var var_2063:BigInteger;
      
      private var var_1951:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1273 = param1;
         var_1525 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2063.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1526 = new BigInteger();
         var_1526.fromRadix(param1,param2);
         var_2063 = var_1526.modPow(var_607,var_1273);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1951.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1273.toString() + ",generator: " + var_1525.toString() + ",secret: " + param1);
         var_607 = new BigInteger();
         var_607.fromRadix(param1,param2);
         var_1951 = var_1525.modPow(var_607,var_1273);
         return true;
      }
   }
}
