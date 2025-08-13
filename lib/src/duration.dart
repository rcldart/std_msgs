// src/duration.dart
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';


// Duration type
class StdMsgsDuration
    extends BaseRosMessage<builtin_interfaces__msg__Duration> {
  @override
  String get typeName => 'Duration';

  StdMsgsDuration({int sec = 0, int nanosec = 0}) {
    data = malloc<builtin_interfaces__msg__Duration>();
    data.ref.sec = sec;
    data.ref.nanosec = nanosec;
  }

  int get sec => data.ref.sec;
  int get nanosec => data.ref.nanosec;

  set sec(int val) => data.ref.sec = val;
  set nanosec(int val) => data.ref.nanosec = val;
}


base class builtin_interfaces__msg__Duration extends ffi.Struct {
  @ffi.Int32()
  external int sec;
  @ffi.Uint32()
  external int nanosec;
}