import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Ctrl<T> = CtrlController<T> with _$Ctrl<T>;

abstract class CtrlController<T> with Store {
  @observable
  T val;

  CtrlController({required this.val});

  @action
  void setState(T state) => val = state;
}
