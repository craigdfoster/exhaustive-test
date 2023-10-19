// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'exhaustive_test.g.dart';

sealed class Base {
  Base(this.id);
  final String id;
}

class Project = _ProjectBase with _$Project;

sealed class _ProjectBase extends Base with Store {
  _ProjectBase(String id, this.fieldA) : super(id);

  @observable
  String fieldA;
}

class User = _UserBase with _$User;

sealed class _UserBase extends Base with Store {
  _UserBase(String id, this.fieldB) : super(id);

  @observable
  String fieldB;
}

sealed class ProjectMember extends Base {
  ProjectMember(String id, this.project) : super(id);

  final Project project;
}

class Thing1 = _Thing1Base with _$Thing1;

sealed class _Thing1Base extends ProjectMember with Store {
  _Thing1Base(String id, Project project, this.fieldC) : super(id, project);

  @observable
  String fieldC;
}

class Thing2 = _Thing2Base with _$Thing2;

sealed class _Thing2Base extends ProjectMember with Store {
  _Thing2Base(String id, Project project, this.fieldD) : super(id, project);

  @observable
  String fieldD;
}

sealed class Parent = _ParentBase with _$Parent;

sealed class _ParentBase extends ProjectMember with Store {
  _ParentBase(String id, Project project) : super(id, project);

  final children = ObservableList<Child>();

  @computed
  String get derivedField => throw UnimplementedError();
}

class Thing3 = _Thing3Base with _$Thing3;

sealed class _Thing3Base extends Parent with Store {
  _Thing3Base(String id, Project project, this.fieldF) : super(id, project);

  @observable
  String fieldF;
}

class Child = _ChildBase with _$Child;

sealed class _ChildBase extends Parent with Store {
  _ChildBase(String id, Project project, this.fieldE) : super(id, project);

  @observable
  String fieldE;
}
