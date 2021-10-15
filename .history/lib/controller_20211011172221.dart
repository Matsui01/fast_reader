import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Ctrl<T> = CtrlController<T> with _$Ctrl<T>;

abstract class CtrlController<T> with Store {
  @observable
  T currentState;

  CtrlController({required this.currentState});

  @action
  void setState(T state) => currentState = state;
}
