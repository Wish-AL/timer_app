import 'package:isar/isar.dart';

part 'timer_data.g.dart';

@collection
class TimerData {
  Id id = Isar.autoIncrement;
  int? preparing;//preparation!!!
  int? work;
  int? rest;
  int? cycles;
  int? sets;
  int? restBetweenSets;
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
  int? dayForWork;
  DateTime? timeForWork;
  bool? notification;
}



// class TypeActivityInfoAdapter extends TypeAdapter<TypeActivityInfo> {
//   @override
//   final int typeId = 1;
//
//   @override
//   TypeActivityInfo read(BinaryReader reader) {
//     final name = reader.readString();
//     final level = reader.readString();
//     final type = reader.readString();
//     final totalTime = reader.readInt();
//     final imagePath = reader.readString();
//     return TypeActivityInfo(
//       name,
//       level,
//       type,
//       totalTime,
//       imagePath,
//     );
//   }
//
//   @override
//   void write(BinaryWriter writer, TypeActivityInfo obj) {
//     writer.writeString(obj.name);
//     writer.writeString(obj.level);
//     writer.writeString(obj.type);
//     writer.writeInt(obj.totalTime);
//     writer.writeString(obj.imagePath);
//
//   }
//
// }
// class TimerDatAdapter extends TypeAdapter<TimerData> {
//   @override
//   final int typeId = 0;
//
//   @override
//   TimerData read(BinaryReader reader) {
//     final preparing = reader.readInt();
//     final work = reader.readInt();
//     final timeOut = reader.readInt();
//     final cycles = reader.readInt();
//     final sets = reader.readInt();
//     final rest = reader.readInt();
//     return TimerData(
//       preparing,
//       work,
//       timeOut,
//       cycles,
//       sets,
//       rest,
//     );
//   }
//
//   @override
//   void write(BinaryWriter writer, TimerData obj) {
//     writer.writeInt(obj.preparing);
//     writer.writeInt(obj.work);
//     writer.writeInt(obj.timeOut);
//     writer.writeInt(obj.cycles);
//     writer.writeInt(obj.sets);
//     writer.writeInt(obj.rest);
//   }
// }
