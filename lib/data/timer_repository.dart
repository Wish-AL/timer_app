import 'package:timer_app/data/timer_data.dart';
import 'package:timer_app/data/timer_data_local_db_controller.dart';
import 'package:timer_app/data/timer_data_model.dart';

class TimerRepository {
  TimerRepository({required LocalDbController dbController})
      : _dbController = dbController;
  final TimerDataModel timerData = TimerDataModel(
    preparing: 10,
    work: 20,
    rest: 15,
    cycles: 2,
    sets: 2,
    calmDown: 12,
    // add relax
  );

  final LocalDbController _dbController;
  final List<int> time = [10, 20, 15];

  final List<int> timeList = [];
  final List<String> namesOfActivity = [];
  final List<String> nameOfActivity = [
    'Підготовка',
    'Робота',
    'Відпочинок',
    'Заспокоїтися',
  ];
  //TimerDataModel _timerDataModel = TimerDataModel();

  Future<TimerData> timetableDataFromDB(int id) async {
    return _dbController.getTimetable(id);
  }
  Future<void> timetableDataToDB(TimerData data) async {
    _dbController.addObjectToDB(data);
  }




  void runTimer(int setsNum, int cyclesNum) {
    //int sets = timerData.sets;
    int sets = setsNum;
    while (sets > 0) {
      //int cycles = timerData.cycles;
      int cycles = cyclesNum;
      while (cycles > 0) {
        for (int i = 0; i <= 2; i++) {
          namesOfActivity.add(nameOfActivity[i]);
          switch (i) {
            case 0:
              timeList.add(timerData.preparing ?? 0);
            case 1:
              timeList.add(timerData.work ?? 0);
            case 2:
              timeList.add(timerData.rest ?? 0);
          }
        }
        cycles--;
      }
      sets--;
      namesOfActivity.add(nameOfActivity[3]);
      timeList.add(timerData.calmDown ?? 0);
    }
  }
}
