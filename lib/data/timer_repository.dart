import 'package:timer_app/data/timer_data_model.dart';

class TimerRepository {
  TimerRepository();
  final TimerData timerData = const TimerData(
    preparing: 10,
    work: 20,
    timeOut: 15,
    cycles: 2,
    sets: 2,
    rest: 12,
    // add relax
  );
  final List<int> time = [10, 20, 15];

  final List<int> timeList = [];
  final List<String> namesOfActivity = [];
  final List<String> nameOfActivity = [
    'Підготовка',
    'Робота',
    'Відпочинок',
    'Заспокоїтися',
  ];

  //TODO make params in 'runTimer'
  void runTimer() {
    int sets = timerData.sets;

    while (sets > 0) {
      int cycles = timerData.cycles;
      while (cycles > 0) {
        for (int i = 0; i <= 2; i++) {
          namesOfActivity.add(nameOfActivity[i]);
          switch (i) {
            case 0:
              timeList.add(timerData.preparing);
            case 1:
              timeList.add(timerData.work);
            case 2:
              timeList.add(timerData.timeOut);
          }
        }
        cycles--;
      }
      sets--;
      namesOfActivity.add(nameOfActivity[3]);
      timeList.add(timerData.rest);
    }
  }


}
