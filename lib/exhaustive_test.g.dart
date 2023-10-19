// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exhaustive_test.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Project on _ProjectBase, Store {
  late final _$fieldAAtom = Atom(name: '_ProjectBase.fieldA', context: context);

  @override
  String get fieldA {
    _$fieldAAtom.reportRead();
    return super.fieldA;
  }

  @override
  set fieldA(String value) {
    _$fieldAAtom.reportWrite(value, super.fieldA, () {
      super.fieldA = value;
    });
  }

  @override
  String toString() {
    return '''
fieldA: ${fieldA}
    ''';
  }
}

mixin _$User on _UserBase, Store {
  late final _$fieldBAtom = Atom(name: '_UserBase.fieldB', context: context);

  @override
  String get fieldB {
    _$fieldBAtom.reportRead();
    return super.fieldB;
  }

  @override
  set fieldB(String value) {
    _$fieldBAtom.reportWrite(value, super.fieldB, () {
      super.fieldB = value;
    });
  }

  @override
  String toString() {
    return '''
fieldB: ${fieldB}
    ''';
  }
}

mixin _$Thing1 on _Thing1Base, Store {
  late final _$fieldCAtom = Atom(name: '_Thing1Base.fieldC', context: context);

  @override
  String get fieldC {
    _$fieldCAtom.reportRead();
    return super.fieldC;
  }

  @override
  set fieldC(String value) {
    _$fieldCAtom.reportWrite(value, super.fieldC, () {
      super.fieldC = value;
    });
  }

  @override
  String toString() {
    return '''
fieldC: ${fieldC}
    ''';
  }
}

mixin _$Thing2 on _Thing2Base, Store {
  late final _$fieldDAtom = Atom(name: '_Thing2Base.fieldD', context: context);

  @override
  String get fieldD {
    _$fieldDAtom.reportRead();
    return super.fieldD;
  }

  @override
  set fieldD(String value) {
    _$fieldDAtom.reportWrite(value, super.fieldD, () {
      super.fieldD = value;
    });
  }

  @override
  String toString() {
    return '''
fieldD: ${fieldD}
    ''';
  }
}

mixin _$Parent on _ParentBase, Store {
  Computed<String>? _$derivedFieldComputed;

  @override
  String get derivedField =>
      (_$derivedFieldComputed ??= Computed<String>(() => super.derivedField,
              name: '_ParentBase.derivedField'))
          .value;

  @override
  String toString() {
    return '''
derivedField: ${derivedField}
    ''';
  }
}

mixin _$Thing3 on _Thing3Base, Store {
  late final _$fieldFAtom = Atom(name: '_Thing3Base.fieldF', context: context);

  @override
  String get fieldF {
    _$fieldFAtom.reportRead();
    return super.fieldF;
  }

  @override
  set fieldF(String value) {
    _$fieldFAtom.reportWrite(value, super.fieldF, () {
      super.fieldF = value;
    });
  }

  @override
  String toString() {
    return '''
fieldF: ${fieldF}
    ''';
  }
}

mixin _$Child on _ChildBase, Store {
  late final _$fieldEAtom = Atom(name: '_ChildBase.fieldE', context: context);

  @override
  String get fieldE {
    _$fieldEAtom.reportRead();
    return super.fieldE;
  }

  @override
  set fieldE(String value) {
    _$fieldEAtom.reportWrite(value, super.fieldE, () {
      super.fieldE = value;
    });
  }

  @override
  String toString() {
    return '''
fieldE: ${fieldE}
    ''';
  }
}
