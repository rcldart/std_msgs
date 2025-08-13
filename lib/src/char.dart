// src/char.dart
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';

base class std_msgs__msg__Char extends ffi.Struct {
  @ffi.Uint8()
  external int data;

  /// The length of the string (excluding the null byte).
  @ffi.Size()
  external int size;

  /// The capacity represents the number of allocated bytes (including the null byte).
  @ffi.Size()
  external int capacity;
}


// Char type
class StdMsgsChar extends BaseRosMessage<std_msgs__msg__Char> {
  @override
  String get typeName => 'Char';

  StdMsgsChar(int value) {
    data = calloc<std_msgs__msg__Char>();
    data.ref.data = value;
  }

  int get value => data.ref.data;
  set value(int val) => data.ref.data = val;
}
