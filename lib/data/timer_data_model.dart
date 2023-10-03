//import 'package:equatable/equatable.dart';

class TimerDataModel {

  int? id;
  int? preparing;
  int? work;
  int? rest;
  int? cycles;
  int? sets;
  int? calmDown;
  String? workDescription;
  String? restDescription;
  String? workName;
  String? restName;
  String? workTune;
  String? restTune;
  String? name;
  String? level;
  String? type;
  int? totalTime;
  String? image;
  DateTime? timeForWork;
  bool? notification;

  TimerDataModel({
    this.id,
    this.preparing,
    this.work,
    this.rest,
    this.cycles,
    this.sets,
    this.calmDown,
    this.workDescription,
    this.restDescription,
    this.workName,
    this.restName,
    this.workTune,
    this.restTune,
    this.name,
    this.level,
    this.type,
    this.totalTime,
    this.image,
    this.notification,
  });

  // @override
  // List<Object?> get props => [
  //       id,
  //       preparing,
  //       work,
  //       timeOut,
  //       cycles,
  //       sets,
  //       rest,
  //       workDescription,
  //       timeOutDescription,
  //       workName,
  //       timeOutName,
  //       workTune,
  //       timeOutTune,
  //       name,
  //       level,
  //       type,
  //       totalTime,
  //       image,
  //       notification,
  //   ];
}
