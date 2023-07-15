import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;

  RxInt _y = 0.obs;
  RxInt get y => _y;

  void incrementX() {
    _x++;
    update();
    print(_x);
  }

  void decrementX() {
    _x--;
    update();
    print(_x);
  }

  void incrementY() {
    _y++;

    print(_y);
  }

  void decrementY() {
    _y--;

    print(_y);
  }
}
