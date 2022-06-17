// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'some_mobx_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SomeMobxStore on _SomeMobxStore, Store {
  late final _$someModelAtom =
      Atom(name: '_SomeMobxStore.someModel', context: context);

  @override
  SomeModel get someModel {
    _$someModelAtom.reportRead();
    return super.someModel;
  }

  @override
  set someModel(SomeModel value) {
    _$someModelAtom.reportWrite(value, super.someModel, () {
      super.someModel = value;
    });
  }

  late final _$someModelCompanionAtom =
      Atom(name: '_SomeMobxStore.someModelCompanion', context: context);

  @override
  dynamic get someModelCompanion {
    _$someModelCompanionAtom.reportRead();
    return super.someModelCompanion;
  }

  @override
  set someModelCompanion(dynamic value) {
    _$someModelCompanionAtom.reportWrite(value, super.someModelCompanion, () {
      super.someModelCompanion = value;
    });
  }

  @override
  String toString() {
    return '''
someModel: ${someModel},
someModelCompanion: ${someModelCompanion}
    ''';
  }
}
