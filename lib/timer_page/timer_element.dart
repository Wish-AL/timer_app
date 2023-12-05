import 'dart:async';

class TimerElement {
  // TimerElement({required int time}) : timeCountdown = time;
  // //final int _time;
  late Timer timer;
  late StreamController<int> controller;

  Stream<int> timerDataStream(int time) {
    int timeCountdown = time;
    controller = StreamController<int>();
    timer = Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        if(timeCountdown >= 0) {
          controller.add(timeCountdown--);
        } else if (timeCountdown == -1) {
          timer.cancel();
          controller.close();
        }
      },
    );
    return controller.stream;
  }

  void stop(){
timer.cancel();

  }
  void run(){

  }
}

class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks + 1);
  }
}

