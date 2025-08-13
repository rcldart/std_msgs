// src/byte.dart
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';

base class std_msgs__msg__Byte extends ffi.Struct {
  @ffi.Uint8()
  external int data;

  /// The length of the string (excluding the null byte).
  @ffi.Size()
  external int size;

  /// The capacity represents the number of allocated bytes (including the null byte).
  @ffi.Size()
  external int capacity;
}

// Byte type
class StdMsgsByte extends BaseRosMessage<std_msgs__msg__Byte> {
  @override
  String get typeName => 'Byte';

  StdMsgsByte(int value) {
    data = calloc<std_msgs__msg__Byte>();
    data.ref.data = value;
  }

  int get value => data.ref.data;
  set value(int val) => data.ref.data = val;
}
