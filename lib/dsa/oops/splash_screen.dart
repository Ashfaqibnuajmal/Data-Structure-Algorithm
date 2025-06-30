import 'dart:async';

class Deboucher {
  Timer? _timer;
  run(VoidCallback, action, {milliSecond = 300}) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliSecond), action);
  }
}
