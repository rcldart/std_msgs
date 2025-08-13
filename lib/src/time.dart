// src/time.dart
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';


base class builtin_interfaces__msg__Time extends ffi.Struct {
  @ffi.Int32()
  external int sec;
  @ffi.Uint32()
  external int nanosec;
}

// Time type
class StdMsgsTime extends BaseRosMessage<builtin_interfaces__msg__Time> {
  @override
  String get typeName => 'Time';

  StdMsgsTime({int sec = 0, int nanosec = 0}) {
    data = malloc<builtin_interfaces__msg__Time>();
    data.ref.sec = sec;
    data.ref.nanosec = nanosec;
  }

  int get sec => data.ref.sec;
  int get nanosec => data.ref.nanosec;

  set sec(int val) => data.ref.sec = val;
  set nanosec(int val) => data.ref.nanosec = val;

  DateTime toDateTime() {
    return DateTime.fromMillisecondsSinceEpoch(sec * 1000 + nanosec ~/ 1000000);
  }
}
