// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class SomeModelData extends DataClass implements Insertable<SomeModelData> {
  final int id;
  final String someTextField;
  SomeModelData({required this.id, required this.someTextField});
  factory SomeModelData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SomeModelData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      someTextField: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}some_text_field'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['some_text_field'] = Variable<String>(someTextField);
    return map;
  }

  SomeModelCompanion toCompanion(bool nullToAbsent) {
    return SomeModelCompanion(
      id: Value(id),
      someTextField: Value(someTextField),
    );
  }

  factory SomeModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SomeModelData(
      id: serializer.fromJson<int>(json['id']),
      someTextField: serializer.fromJson<String>(json['someTextField']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'someTextField': serializer.toJson<String>(someTextField),
    };
  }

  SomeModelData copyWith({int? id, String? someTextField}) => SomeModelData(
        id: id ?? this.id,
        someTextField: someTextField ?? this.someTextField,
      );
  @override
  String toString() {
    return (StringBuffer('SomeModelData(')
          ..write('id: $id, ')
          ..write('someTextField: $someTextField')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, someTextField);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SomeModelData &&
          other.id == this.id &&
          other.someTextField == this.someTextField);
}

class SomeModelCompanion extends UpdateCompanion<SomeModelData> {
  final Value<int> id;
  final Value<String> someTextField;
  const SomeModelCompanion({
    this.id = const Value.absent(),
    this.someTextField = const Value.absent(),
  });
  SomeModelCompanion.insert({
    this.id = const Value.absent(),
    required String someTextField,
  }) : someTextField = Value(someTextField);
  static Insertable<SomeModelData> custom({
    Expression<int>? id,
    Expression<String>? someTextField,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (someTextField != null) 'some_text_field': someTextField,
    });
  }

  SomeModelCompanion copyWith({Value<int>? id, Value<String>? someTextField}) {
    return SomeModelCompanion(
      id: id ?? this.id,
      someTextField: someTextField ?? this.someTextField,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (someTextField.present) {
      map['some_text_field'] = Variable<String>(someTextField.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SomeModelCompanion(')
          ..write('id: $id, ')
          ..write('someTextField: $someTextField')
          ..write(')'))
        .toString();
  }
}

class $SomeModelTable extends SomeModel
    with TableInfo<$SomeModelTable, SomeModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SomeModelTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _someTextFieldMeta =
      const VerificationMeta('someTextField');
  @override
  late final GeneratedColumn<String?> someTextField = GeneratedColumn<String?>(
      'some_text_field', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, someTextField];
  @override
  String get aliasedName => _alias ?? 'some_model';
  @override
  String get actualTableName => 'some_model';
  @override
  VerificationContext validateIntegrity(Insertable<SomeModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('some_text_field')) {
      context.handle(
          _someTextFieldMeta,
          someTextField.isAcceptableOrUnknown(
              data['some_text_field']!, _someTextFieldMeta));
    } else if (isInserting) {
      context.missing(_someTextFieldMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SomeModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SomeModelData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SomeModelTable createAlias(String alias) {
    return $SomeModelTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $SomeModelTable someModel = $SomeModelTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [someModel];
}
