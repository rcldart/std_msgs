// src/int8.dart
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';

base class std_msgs__msg__Int8 extends ffi.Struct {
  @ffi.Int8()
  external int data;

  /// The length of the string (excluding the null byte).
  @ffi.Size()
  external int size;

  /// The capacity represents the number of allocated bytes (including the null byte).
  @ffi.Size()
  external int capacity;
}


// Int8 type
class StdMsgsInt8 extends BaseRosMessage<std_msgs__msg__Int8> {
  @override
  String get typeName => 'Int8';

  StdMsgsInt8(int value) {

    var valuePtr = calloc<std_msgs__msg__Int8>();
    valuePtr.ref.data = value;
    data = valuePtr;
  }

  int get value => data.ref.data;
  set value(int val) => data.ref.data = val;
}
