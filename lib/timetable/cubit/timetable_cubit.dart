import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/timer_data.dart';
import '../../data/timer_repository.dart';

part 'timetable_state.dart';

class TimetableCubit extends Cubit<TimetableState> {
  TimetableCubit({required TimerRepository timerRepository, this.id})
      : _repository = timerRepository,
        super(const TimetableState()) {
    if (id != null) {
      getTimetableData(id!);
    } else{
     _timerData.cycles = 1;
     _timerData.sets = 1;
    } //to create new timetable id=null
  }

  final int? id;
  final TimerRepository _repository;
  TimerData _timerData = TimerData();

  Future<void> getTimetableData(int id) async {
    _timerData = await _repository.timetableDataFromDB(id);
    emit(state.copyWith(
      preparing: _timerData.preparing,
      work: _timerData.work,
      rest: _timerData.rest,
      cycles: _timerData.cycles,
      sets: _timerData.sets,
      restBetweenSets: _timerData.restBetweenSets,
      calmDown: _timerData.calmDown,
      workDescription: _timerData.workDescription,
      restDescription: _timerData.restDescription,
      workName: _timerData.workName,
      restName: _timerData.restName,
      workTune: _timerData.workTune,
      restTune: _timerData.restTune,
      name: _timerData.name,
      level: _timerData.level,
      type: _timerData.type,
      totalTime: _timerData.totalTime,
      image: _timerData.image,
      dayForWork: _timerData.dayForWork,
      timeForWork: _timerData.timeForWork,
      notification: _timerData.notification,
    ));
  }

  Future<void> putTimetableData(TimerData data) async {
    _repository.timetableDataToDB(data);
  }


  void setPreparing(int value) {
    _timerData.preparing = value;
    _timerData.totalTime = _calculateTotalTime(_timerData);
    emit(state.copyWith(
      preparing: value,
      totalTime: _timerData.totalTime,
    ));
  }

  void setWork(int value, String name, description, tune) {
    _timerData.work = value;
    _timerData.workName = name;
    _timerData.workDescription = description;
    _timerData.workTune = tune;
    _timerData.totalTime = _calculateTotalTime(_timerData);

    emit(state.copyWith(
      work: value,
      workName: name,
      workDescription: description,
      workTune: tune,
      totalTime: _timerData.totalTime,
    ));
  }

  void setRest(int value, String name, description, tune) {
    _timerData.rest = value;
    _timerData.restName = name;
    _timerData.restDescription = description;
    _timerData.restTune = tune;
    _timerData.totalTime = _calculateTotalTime(_timerData);
    emit(state.copyWith(
      rest: value,
      restName: name,
      restDescription: description,
      restTune: tune,
      totalTime: _timerData.totalTime,
    ));
  }

  void setCycles(int value) {
    _timerData.cycles = value;
    _timerData.totalTime = _calculateTotalTime(_timerData);
    emit(state.copyWith(
      cycles: value,
      totalTime: _timerData.totalTime,
    ));
  }

  void setSets(int value) {
    _timerData.sets = value;
    _timerData.totalTime = _calculateTotalTime(_timerData);
    emit(state.copyWith(
      sets: value,
      totalTime: _timerData.totalTime,
    ));
  }

  void setRestBetweenSets(int value) {
    _timerData.restBetweenSets = value;
    _timerData.totalTime = _calculateTotalTime(_timerData);
    emit(state.copyWith(restBetweenSets: value, totalTime: _timerData.totalTime,));
  }

  void setCalmDown(int value) {
    _timerData.calmDown = value;
    _timerData.totalTime = _calculateTotalTime(_timerData);
    emit(state.copyWith(
      calmDown: value,
      totalTime: _timerData.totalTime,
    ));
  }

  void setParams(
      String name, category, level, image, day, time, bool notification) {
    _timerData.name = name;
    _timerData.type = category;
    _timerData.level = level;
    _timerData.image = image;
    _timerData.timeForWork = time;
    _timerData.notification = notification;
    _timerData.dayForWork = day;
    emit(state.copyWith(
      name: name,
      type: category,
      level: level,
      image: image,
      dayForWork: day,
      timeForWork: time,
      notification: notification,
    ));
  }

  int _calculateTotalTime(TimerData data) {
    int prep = _timerData.preparing ?? 0;
    int work = _timerData.work ?? 0;
    int rest = _timerData.rest ?? 0;
    int cycles = _timerData.cycles ?? 0;
    int sets = _timerData.sets ?? 0;
    int restBetSets = 0;
    int calmDown = _timerData.calmDown ?? 0;
    return prep +
        ((work + rest) * cycles) * sets +
        (restBetSets * (sets - 1)) +
        calmDown;
  }
}
