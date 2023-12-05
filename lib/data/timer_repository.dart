import 'package:timer_app/data/timer_data.dart';
import 'package:timer_app/data/timer_data_local_db_controller.dart';
import 'package:timer_app/data/timer_data_model.dart';

class TimerRepository {
  TimerRepository({required LocalDbController dbController})
      : _dbController = dbController;

  final bool isAuthorised = false;
  final bool isSubscribed = false;
  final List<String> defaultSortList = ['All', 'Saved'];

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






}
