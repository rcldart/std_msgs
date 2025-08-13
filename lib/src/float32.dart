// src/float32.dart

import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';


base class std_msgs__msg__Float32 extends ffi.Struct {
  @ffi.Float()
  external double data;

  /// The length of the string (excluding the null byte).
  @ffi.Size()
  external int size;

  /// The capacity represents the number of allocated bytes (including the null byte).
  @ffi.Size()
  external int capacity;
}

// Float32 type - Following your existing pattern from std_msgs_float.dart
class StdMsgsFloat32 extends BaseRosMessage<std_msgs__msg__Float32> {
  @override
  String get typeName => 'Float32';

  StdMsgsFloat32(double value) {
    var value2 = calloc<std_msgs__msg__Float32>();
    value2.ref.data = value;
    this.data = value2;
  }

  double get value => data.ref.data;
  set value(double val) => data.ref.data = val;
}