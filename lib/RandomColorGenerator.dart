import 'dart:math';
import 'dart:ui';

class RandomColorGenerator {
   static Color randomColor() {
    return Color(Random().nextInt(0xFFFFFFFF));
  }
}