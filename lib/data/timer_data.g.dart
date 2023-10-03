// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTimerDataCollection on Isar {
  IsarCollection<TimerData> get timerDatas => this.collection();
}

const TimerDataSchema = CollectionSchema(
  name: r'TimerData',
  id: -6400389746147121307,
  properties: {
    r'calmDown': PropertySchema(
      id: 0,
      name: r'calmDown',
      type: IsarType.long,
    ),
    r'cycles': PropertySchema(
      id: 1,
      name: r'cycles',
      type: IsarType.long,
    ),
    r'dayForWork': PropertySchema(
      id: 2,
      name: r'dayForWork',
      type: IsarType.long,
    ),
    r'image': PropertySchema(
      id: 3,
      name: r'image',
      type: IsarType.string,
    ),
    r'level': PropertySchema(
      id: 4,
      name: r'level',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    ),
    r'notification': PropertySchema(
      id: 6,
      name: r'notification',
      type: IsarType.bool,
    ),
    r'preparing': PropertySchema(
      id: 7,
      name: r'preparing',
      type: IsarType.long,
    ),
    r'rest': PropertySchema(
      id: 8,
      name: r'rest',
      type: IsarType.long,
    ),
    r'restBetweenSets': PropertySchema(
      id: 9,
      name: r'restBetweenSets',
      type: IsarType.long,
    ),
    r'restDescription': PropertySchema(
      id: 10,
      name: r'restDescription',
      type: IsarType.string,
    ),
    r'restName': PropertySchema(
      id: 11,
      name: r'restName',
      type: IsarType.string,
    ),
    r'restTune': PropertySchema(
      id: 12,
      name: r'restTune',
      type: IsarType.string,
    ),
    r'sets': PropertySchema(
      id: 13,
      name: r'sets',
      type: IsarType.long,
    ),
    r'timeForWork': PropertySchema(
      id: 14,
      name: r'timeForWork',
      type: IsarType.dateTime,
    ),
    r'totalTime': PropertySchema(
      id: 15,
      name: r'totalTime',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 16,
      name: r'type',
      type: IsarType.string,
    ),
    r'work': PropertySchema(
      id: 17,
      name: r'work',
      type: IsarType.long,
    ),
    r'workDescription': PropertySchema(
      id: 18,
      name: r'workDescription',
      type: IsarType.string,
    ),
    r'workName': PropertySchema(
      id: 19,
      name: r'workName',
      type: IsarType.string,
    ),
    r'workTune': PropertySchema(
      id: 20,
      name: r'workTune',
      type: IsarType.string,
    )
  },
  estimateSize: _timerDataEstimateSize,
  serialize: _timerDataSerialize,
  deserialize: _timerDataDeserialize,
  deserializeProp: _timerDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _timerDataGetId,
  getLinks: _timerDataGetLinks,
  attach: _timerDataAttach,
  version: '3.1.0+1',
);

int _timerDataEstimateSize(
  TimerData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.level;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.restDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.restName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.restTune;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.workDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.workName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.workTune;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _timerDataSerialize(
  TimerData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.calmDown);
  writer.writeLong(offsets[1], object.cycles);
  writer.writeLong(offsets[2], object.dayForWork);
  writer.writeString(offsets[3], object.image);
  writer.writeString(offsets[4], object.level);
  writer.writeString(offsets[5], object.name);
  writer.writeBool(offsets[6], object.notification);
  writer.writeLong(offsets[7], object.preparing);
  writer.writeLong(offsets[8], object.rest);
  writer.writeLong(offsets[9], object.restBetweenSets);
  writer.writeString(offsets[10], object.restDescription);
  writer.writeString(offsets[11], object.restName);
  writer.writeString(offsets[12], object.restTune);
  writer.writeLong(offsets[13], object.sets);
  writer.writeDateTime(offsets[14], object.timeForWork);
  writer.writeLong(offsets[15], object.totalTime);
  writer.writeString(offsets[16], object.type);
  writer.writeLong(offsets[17], object.work);
  writer.writeString(offsets[18], object.workDescription);
  writer.writeString(offsets[19], object.workName);
  writer.writeString(offsets[20], object.workTune);
}

TimerData _timerDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TimerData();
  object.calmDown = reader.readLongOrNull(offsets[0]);
  object.cycles = reader.readLongOrNull(offsets[1]);
  object.dayForWork = reader.readLongOrNull(offsets[2]);
  object.id = id;
  object.image = reader.readStringOrNull(offsets[3]);
  object.level = reader.readStringOrNull(offsets[4]);
  object.name = reader.readStringOrNull(offsets[5]);
  object.notification = reader.readBoolOrNull(offsets[6]);
  object.preparing = reader.readLongOrNull(offsets[7]);
  object.rest = reader.readLongOrNull(offsets[8]);
  object.restBetweenSets = reader.readLongOrNull(offsets[9]);
  object.restDescription = reader.readStringOrNull(offsets[10]);
  object.restName = reader.readStringOrNull(offsets[11]);
  object.restTune = reader.readStringOrNull(offsets[12]);
  object.sets = reader.readLongOrNull(offsets[13]);
  object.timeForWork = reader.readDateTimeOrNull(offsets[14]);
  object.totalTime = reader.readLongOrNull(offsets[15]);
  object.type = reader.readStringOrNull(offsets[16]);
  object.work = reader.readLongOrNull(offsets[17]);
  object.workDescription = reader.readStringOrNull(offsets[18]);
  object.workName = reader.readStringOrNull(offsets[19]);
  object.workTune = reader.readStringOrNull(offsets[20]);
  return object;
}

P _timerDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readLongOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _timerDataGetId(TimerData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _timerDataGetLinks(TimerData object) {
  return [];
}

void _timerDataAttach(IsarCollection<dynamic> col, Id id, TimerData object) {
  object.id = id;
}

extension TimerDataQueryWhereSort
    on QueryBuilder<TimerData, TimerData, QWhere> {
  QueryBuilder<TimerData, TimerData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TimerDataQueryWhere
    on QueryBuilder<TimerData, TimerData, QWhereClause> {
  QueryBuilder<TimerData, TimerData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TimerDataQueryFilter
    on QueryBuilder<TimerData, TimerData, QFilterCondition> {
  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> calmDownIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'calmDown',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      calmDownIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'calmDown',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> calmDownEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calmDown',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> calmDownGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'calmDown',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> calmDownLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'calmDown',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> calmDownBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'calmDown',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> cyclesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cycles',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> cyclesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cycles',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> cyclesEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cycles',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> cyclesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cycles',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> cyclesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cycles',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> cyclesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cycles',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> dayForWorkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dayForWork',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      dayForWorkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dayForWork',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> dayForWorkEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dayForWork',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      dayForWorkGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dayForWork',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> dayForWorkLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dayForWork',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> dayForWorkBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dayForWork',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> imageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> imageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> levelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> levelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> levelEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> levelGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> levelLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> levelBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'level',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> levelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> levelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> levelContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> levelMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'level',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> levelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> levelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'level',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      notificationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notification',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      notificationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notification',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> notificationEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notification',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> preparingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'preparing',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      preparingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'preparing',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> preparingEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preparing',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      preparingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'preparing',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> preparingLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'preparing',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> preparingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'preparing',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rest',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rest',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rest',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rest',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rest',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restBetweenSetsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'restBetweenSets',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restBetweenSetsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'restBetweenSets',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restBetweenSetsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'restBetweenSets',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restBetweenSetsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'restBetweenSets',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restBetweenSetsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'restBetweenSets',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restBetweenSetsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'restBetweenSets',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'restDescription',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'restDescription',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'restDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'restDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'restDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'restDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'restDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'restDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'restDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'restDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'restDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'restDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'restName',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'restName',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'restName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'restName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'restName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'restName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'restName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'restName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'restName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'restName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'restName',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'restName',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restTuneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'restTune',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restTuneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'restTune',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restTuneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'restTune',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restTuneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'restTune',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restTuneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'restTune',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restTuneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'restTune',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restTuneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'restTune',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restTuneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'restTune',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restTuneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'restTune',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restTuneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'restTune',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> restTuneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'restTune',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      restTuneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'restTune',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> setsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sets',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> setsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sets',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> setsEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sets',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> setsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sets',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> setsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sets',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> setsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sets',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      timeForWorkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeForWork',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      timeForWorkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeForWork',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> timeForWorkEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeForWork',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      timeForWorkGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeForWork',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> timeForWorkLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeForWork',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> timeForWorkBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeForWork',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> totalTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalTime',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      totalTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalTime',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> totalTimeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      totalTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> totalTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> totalTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'work',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'work',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'work',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'work',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'work',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'work',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'workDescription',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'workDescription',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'workDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'workDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'workDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'workDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'workDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'workName',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'workName',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'workName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'workName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'workName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'workName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workName',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'workName',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workTuneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'workTune',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workTuneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'workTune',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workTuneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workTune',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workTuneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workTune',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workTuneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workTune',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workTuneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workTune',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workTuneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'workTune',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workTuneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'workTune',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workTuneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'workTune',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workTuneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'workTune',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition> workTuneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workTune',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterFilterCondition>
      workTuneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'workTune',
        value: '',
      ));
    });
  }
}

extension TimerDataQueryObject
    on QueryBuilder<TimerData, TimerData, QFilterCondition> {}

extension TimerDataQueryLinks
    on QueryBuilder<TimerData, TimerData, QFilterCondition> {}

extension TimerDataQuerySortBy on QueryBuilder<TimerData, TimerData, QSortBy> {
  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByCalmDown() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calmDown', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByCalmDownDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calmDown', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByCycles() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cycles', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByCyclesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cycles', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByDayForWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dayForWork', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByDayForWorkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dayForWork', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByNotification() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notification', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByNotificationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notification', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByPreparing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preparing', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByPreparingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preparing', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByRest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rest', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByRestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rest', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByRestBetweenSets() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restBetweenSets', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByRestBetweenSetsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restBetweenSets', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByRestDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restDescription', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByRestDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restDescription', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByRestName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restName', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByRestNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restName', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByRestTune() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restTune', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByRestTuneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restTune', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortBySets() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sets', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortBySetsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sets', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByTimeForWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeForWork', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByTimeForWorkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeForWork', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByTotalTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTime', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByTotalTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTime', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'work', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByWorkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'work', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByWorkDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workDescription', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByWorkDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workDescription', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByWorkName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workName', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByWorkNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workName', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByWorkTune() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workTune', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> sortByWorkTuneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workTune', Sort.desc);
    });
  }
}

extension TimerDataQuerySortThenBy
    on QueryBuilder<TimerData, TimerData, QSortThenBy> {
  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByCalmDown() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calmDown', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByCalmDownDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calmDown', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByCycles() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cycles', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByCyclesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cycles', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByDayForWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dayForWork', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByDayForWorkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dayForWork', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByNotification() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notification', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByNotificationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notification', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByPreparing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preparing', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByPreparingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preparing', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByRest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rest', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByRestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rest', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByRestBetweenSets() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restBetweenSets', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByRestBetweenSetsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restBetweenSets', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByRestDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restDescription', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByRestDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restDescription', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByRestName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restName', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByRestNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restName', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByRestTune() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restTune', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByRestTuneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restTune', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenBySets() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sets', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenBySetsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sets', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByTimeForWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeForWork', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByTimeForWorkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeForWork', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByTotalTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTime', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByTotalTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTime', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'work', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByWorkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'work', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByWorkDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workDescription', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByWorkDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workDescription', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByWorkName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workName', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByWorkNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workName', Sort.desc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByWorkTune() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workTune', Sort.asc);
    });
  }

  QueryBuilder<TimerData, TimerData, QAfterSortBy> thenByWorkTuneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workTune', Sort.desc);
    });
  }
}

extension TimerDataQueryWhereDistinct
    on QueryBuilder<TimerData, TimerData, QDistinct> {
  QueryBuilder<TimerData, TimerData, QDistinct> distinctByCalmDown() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'calmDown');
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByCycles() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cycles');
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByDayForWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dayForWork');
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByLevel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'level', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByNotification() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notification');
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByPreparing() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preparing');
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByRest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rest');
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByRestBetweenSets() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'restBetweenSets');
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByRestDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'restDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByRestName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'restName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByRestTune(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'restTune', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctBySets() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sets');
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByTimeForWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeForWork');
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByTotalTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalTime');
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'work');
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByWorkDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByWorkName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TimerData, TimerData, QDistinct> distinctByWorkTune(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workTune', caseSensitive: caseSensitive);
    });
  }
}

extension TimerDataQueryProperty
    on QueryBuilder<TimerData, TimerData, QQueryProperty> {
  QueryBuilder<TimerData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TimerData, int?, QQueryOperations> calmDownProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'calmDown');
    });
  }

  QueryBuilder<TimerData, int?, QQueryOperations> cyclesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cycles');
    });
  }

  QueryBuilder<TimerData, int?, QQueryOperations> dayForWorkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dayForWork');
    });
  }

  QueryBuilder<TimerData, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<TimerData, String?, QQueryOperations> levelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'level');
    });
  }

  QueryBuilder<TimerData, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<TimerData, bool?, QQueryOperations> notificationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notification');
    });
  }

  QueryBuilder<TimerData, int?, QQueryOperations> preparingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preparing');
    });
  }

  QueryBuilder<TimerData, int?, QQueryOperations> restProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rest');
    });
  }

  QueryBuilder<TimerData, int?, QQueryOperations> restBetweenSetsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'restBetweenSets');
    });
  }

  QueryBuilder<TimerData, String?, QQueryOperations> restDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'restDescription');
    });
  }

  QueryBuilder<TimerData, String?, QQueryOperations> restNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'restName');
    });
  }

  QueryBuilder<TimerData, String?, QQueryOperations> restTuneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'restTune');
    });
  }

  QueryBuilder<TimerData, int?, QQueryOperations> setsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sets');
    });
  }

  QueryBuilder<TimerData, DateTime?, QQueryOperations> timeForWorkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeForWork');
    });
  }

  QueryBuilder<TimerData, int?, QQueryOperations> totalTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalTime');
    });
  }

  QueryBuilder<TimerData, String?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<TimerData, int?, QQueryOperations> workProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'work');
    });
  }

  QueryBuilder<TimerData, String?, QQueryOperations> workDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workDescription');
    });
  }

  QueryBuilder<TimerData, String?, QQueryOperations> workNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workName');
    });
  }

  QueryBuilder<TimerData, String?, QQueryOperations> workTuneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workTune');
    });
  }
}
