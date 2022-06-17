// ignore_for_file: library_private_types_in_public_api

import 'package:mobx_codegen_dynamic_mwe/database.dart';
import 'package:mobx_codegen_dynamic_mwe/fake_gen.dart';
import 'package:mobx/mobx.dart';

part 'some_mobx_store.g.dart';

class SomeMobxStore = _SomeMobxStore with _$SomeMobxStore;

abstract class _SomeMobxStore with Store {
  _SomeMobxStore();

  @observable
  SomeModel someModel = SomeModel();

  @observable
  SomeModelCompanion someModelCompanion = SomeModelCompanion();

  @observable
  ClassInGeneratingCode classInGeneratingCode = ClassInGeneratingCode();

  @observable
  ClassInGeneratedCode classInGeneratedCode = ClassInGeneratedCode();
}
