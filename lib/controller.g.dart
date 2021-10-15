// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Ctrl<T> on CtrlController<T>, Store {
  final _$valAtom = Atom(name: 'CtrlController.val');

  @override
  T get val {
    _$valAtom.reportRead();
    return super.val;
  }

  @override
  set val(T value) {
    _$valAtom.reportWrite(value, super.val, () {
      super.val = value;
    });
  }

  final _$CtrlControllerActionController =
      ActionController(name: 'CtrlController');

  @override
  void setState(T state) {
    final _$actionInfo = _$CtrlControllerActionController.startAction(
        name: 'CtrlController.setState');
    try {
      return super.setState(state);
    } finally {
      _$CtrlControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
val: ${val}
    ''';
  }
}
