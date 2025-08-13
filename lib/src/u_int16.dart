// src/uint16.dart
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';

base class std_msgs__msg__Uint16 extends ffi.Struct {
  @ffi.Uint16()
  external int data;

  /// The length of the string (excluding the null byte).
  @ffi.Size()
  external int size;

  /// The capacity represents the number of allocated bytes (including the null byte).
  @ffi.Size()
  external int capacity;
}

// UInt16 type
class StdMsgsUInt16 extends BaseRosMessage<std_msgs__msg__Uint16> {
  @override
  String get typeName => 'UInt16';

  StdMsgsUInt16(int value) {
    var valuePtr = calloc<std_msgs__msg__Uint16>();
    valuePtr.ref.data = value;
    data = valuePtr;
  }

  int get value => data.ref.data;
  set value(int val) => data.ref.data = val;
}
