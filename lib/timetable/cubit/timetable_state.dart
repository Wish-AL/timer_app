part of 'timetable_cubit.dart';

class TimetableState extends Equatable {
  const TimetableState({
    this.preparing = 0,
    this.work = 0,
    this.rest = 0,
    this.cycles = 1,
    this.sets = 1,
    this.restBetweenSets = 0,
    this.calmDown = 0,
    this.workDescription = 'Add description',
    this.restDescription = 'Add description',
    this.workName = 'Work',
    this.restName = 'Rest',
    this.workTune,
    this.restTune,
    this.name = 'New timetable',
    this.level,
    this.type,
    this.totalTime = 0,
    this.image,
    this.dayForWork,
    this.timeForWork,
    this.notification = false});

  final int? preparing; //preparation!!!
  final int? work;
  final int? rest;
  final int? cycles;
  final int? sets;
  final int? restBetweenSets;
  final int? calmDown;
  final String? workDescription;
  final String? restDescription;
  final String? workName;
  final String? restName;
  final String? workTune;
  final String? restTune;
  final String? name;
  final String? level;
  final String? type;
  final int? totalTime;
  final String? image;
  final int? dayForWork;
  final DateTime? timeForWork;
  final bool? notification;


  TimetableState copyWith({
    int? preparing,
    int? work,
    int? rest,
    int? cycles,
    int? sets,
    int? restBetweenSets,
    int? calmDown,
    String? workDescription,
    String? restDescription,
    String? workName,
    String? restName,
    String? workTune,
    String? restTune,
    String? name,
    String? level,
    String? type,
    int? totalTime,
    String? image,
    int? dayForWork,
    DateTime? timeForWork,
    bool? notification,
  }) {
    return TimetableState(
      preparing: preparing ?? this.preparing,
      work: work ?? this.work,
      rest: rest ?? this.rest,
      cycles: cycles ?? this.cycles,
      sets: sets ?? this.sets,
      restBetweenSets: restBetweenSets ?? this.restBetweenSets,
      calmDown: calmDown ?? this.calmDown,
      workDescription: workDescription ?? this.workDescription,
      restDescription: restDescription ?? this.restDescription,
      workName: workName ?? this.workName,
      restName: restName ?? this.restName,
      workTune: workTune ?? this.workTune,
      restTune: restTune ?? this.restTune,
      name: name ?? this.name,
      level: level ?? this.level,
      type: type ?? this.type,
      totalTime: totalTime ?? this.totalTime,
      image: image ?? this.image,
      dayForWork: dayForWork ?? this.dayForWork,
      timeForWork: timeForWork ?? this.timeForWork,
      notification: notification ?? this.notification,
    );
  }

  @override
  List<Object?> get props =>
      [
        preparing,
        work,
        rest,
        cycles,
        sets,
        restBetweenSets,
        calmDown,
        workDescription,
        restDescription,
        workName,
        restName,
        name,
        level,
        type,
        totalTime,
        image,
        dayForWork,
        timeForWork,
        notification,
      ];


}