import 'dart:math';
import 'dart:ui';

class ColorService {
    static Color randomColor() {
        return Color(Random().nextInt(0xFFFFFFFF));
    }
}