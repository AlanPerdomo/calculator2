class Memory2 {
  String _value = '0';

  void applyCommand2(String command) {
    if (command == 'AC') {
      _allClear2();
    } else if (_value == '0') {
      _value = command;
    } else if (command == '%' ||
        command == '/' ||
        command == 'x' ||
        command == '-' ||
        command == '+' ||
        command == '=') {
      _value += ' $command ';
    } else {
      _value += command;
    }
  }

  _allClear2() {
    _value = '0';
  }

  String get value {
    return _value;
  }
}
