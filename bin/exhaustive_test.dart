import 'package:exhaustive_test/exhaustive_test.dart';

void main(List<String> arguments) {
  Base x = Project("id", "fieldA");

  // switch(x) recognised as legal by Dart linter in VSCode
  // creates following error on compile
  // Error: The type 'Base' is not exhaustively matched by the switch cases since it doesn't match '__$Project&_ProjectBase&Store()'.
  //
  // But __$Project&_ProjectBase&Store is
  //   * the definition for class Project (class Project = _ProjectBase with _$Project;)
  //   * private and non instantiable

  switch (x) {
    case Project():
      print("x is a Project");
    case User():
      print("x is a User");
    case Thing1():
      print("x is a Thing1");
    case Thing2():
      print("x is a Thing2");
    case Thing3():
      print("x is a Thing3");
    case Child():
      print("x is a Child");
  }

  var project = Project("id2", "fieldA");
  ProjectMember y = Thing1("id", project, "fieldC");

  // switch(y) recognised as legal by Dart linter in VSCode
  // creates following error on compile
  // Error: The type 'ProjectMember' is not exhaustively matched by the switch cases since it doesn't match '__$Thing1&_Thing1Base&Store()'.
  //
  // But __$Thing1&_Thing1Base&Store() is
  //   * the definition for class Thing1 (class Thing1 = _Thing1Base with _$Thing1;)
  //   * private and non instantiable

  switch (y) {
    case Thing1():
      print("y is a Thing1");
    case Thing2():
      print("y is a Thing2");
    case Thing3():
      print("y is a Thing3");
    case Child():
      print("y is a Child");
  }

  // switch(z) works
  // only a minor differnce in inheritance from Base and ProjectMember
  Parent z = Thing3("id", project, "fieldF");
  switch (z) {
    case Thing3():
      print("z is a Thing3");
    case Child():
      print("z is a Child");
  }
}
