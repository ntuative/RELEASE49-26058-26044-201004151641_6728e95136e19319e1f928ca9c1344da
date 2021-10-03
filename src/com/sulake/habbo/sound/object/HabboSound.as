package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1082:SoundChannel = null;
      
      private var var_907:Boolean;
      
      private var var_1081:Sound = null;
      
      private var var_668:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1081 = param1;
         var_1081.addEventListener(Event.COMPLETE,onComplete);
         var_668 = 1;
         var_907 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_907;
      }
      
      public function stop() : Boolean
      {
         var_1082.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_907 = false;
         var_1082 = var_1081.play(0);
         this.volume = var_668;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_668;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1082.position;
      }
      
      public function get length() : Number
      {
         return var_1081.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_668 = param1;
         if(var_1082 != null)
         {
            var_1082.soundTransform = new SoundTransform(var_668);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_907 = true;
      }
   }
}
