// src/float64.dart


import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';


base class std_msgs__msg__Float64 extends ffi.Struct {
  @ffi.Double()
  external double data;

  /// The length of the string (excluding the null byte).
  @ffi.Size()
  external int size;

  /// The capacity represents the number of allocated bytes (including the null byte).
  @ffi.Size()
  external int capacity;
}

// Float64 type
class StdMsgsFloat64 extends BaseRosMessage<std_msgs__msg__Float64> {
  @override
  String get typeName => 'Float64';

  StdMsgsFloat64(double value) {
    var valuePtr = calloc<std_msgs__msg__Float64>();
    valuePtr.ref.data = value;
    data = valuePtr;
  }

  double get value => data.ref.data;
  set value(double val) => data.ref.data = val;
}
