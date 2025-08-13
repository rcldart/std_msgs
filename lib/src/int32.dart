// src/int32.dart
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';

base class std_msgs__msg__Int32 extends ffi.Struct {
  @ffi.Int32()
  external int data;

  /// The length of the string (excluding the null byte).
  @ffi.Size()
  external int size;

  /// The capacity represents the number of allocated bytes (including the null byte).
  @ffi.Size()
  external int capacity;
}


// Int32 type - Following your existing pattern
class StdMsgsInt32 extends BaseRosMessage<std_msgs__msg__Int32> {
  @override
  String get typeName => 'Int32';

  StdMsgsInt32(int value) {

    var value2 = calloc<std_msgs__msg__Int32>();
    value2.ref.data = value;
    data = value2;
  }

  int get value => data.ref.data;
  set value(int val) => data.ref.data = val;
}
