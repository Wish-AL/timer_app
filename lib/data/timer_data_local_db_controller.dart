// enum WorkoutTypes {
//   all,
// }

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:timer_app/data/timer_data.dart';

enum DifficultyLevel {
  low('low'),
  normal('normal'),
  mid('medium'),
  h1('hard'),
  h2('very_hard');

  final String value;

  const DifficultyLevel(this.value);
}

class LocalDbController {
  LocalDbController() {
    init();
  }

  late final dir;
  late final isarTimerData;

  Future<void> init() async {
    dir = await getApplicationDocumentsDirectory();
    isarTimerData = await Isar.open(
      [TimerDataSchema],
      directory: dir.path,
    );
  }

//Create TimerData instance in widget that create new record
// and pass it into this method when it will be calling
  Future<void> addObjectToDB(TimerData timerData) async {
    await isarTimerData.writeTxn(
      () async {
        await isarTimerData.timerDatas.put(timerData);
      },
    );
  }

  Future<List<TimerData>> getListWithTimetables(int limit, int offset) async {
    final timetables = await isarTimerData.tmerDatas
        .where()
        .offset(offset)
        .limit(limit)
        .findAll();
    return timetables.toList();
  }

  Future<List<TimerData>> getAssortedListWithTimetables(
    String level,
    int lowTimeValue,
    int maxTimeValue,
    String type,
    int limit,
    int offset,
  ) async {
    final timetables = await isarTimerData.tmerDatas
        .filter()
        .levelContains(level)
        .and()
        .typeContains(type)
        .and()
        .totalTimeBetween(lowTimeValue, maxTimeValue)
        .offset(offset)
        .limit(limit)
        .findAll();
    return timetables.toList();
  }

  Future<List<TimerData>> getListWithTimetablesTypes(
      String type, int limit, int offset) async {
    final timetables = await isarTimerData.tmerDatas
        .where()
        .typeContains(type)
        .offset(offset)
        .limit(limit)
        .findAll();
    return timetables.toList();
  }

  Future<TimerData> getTimetable(int id) async {
    return await isarTimerData.timerDatas.get(id);
  }

  Future<void> deleteObjectFromDB(int id) async {
    await isarTimerData.writeTxn(
      () async {
        await isarTimerData.timerDatas
            .delete(id); //delete function returns data about success
      },
    );
  }
}
