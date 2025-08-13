// src/uint8.dart
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';

base class std_msgs__msg__Uint8 extends ffi.Struct {
  @ffi.Uint8()
  external int data;

  /// The length of the string (excluding the null byte).
  @ffi.Size()
  external int size;

  /// The capacity represents the number of allocated bytes (including the null byte).
  @ffi.Size()
  external int capacity;
}

// UInt8 type
class StdMsgsUInt8 extends BaseRosMessage<std_msgs__msg__Uint8> {
  @override
  String get typeName => 'UInt8';

  StdMsgsUInt8(int value) {
    var valuePtr = calloc<std_msgs__msg__Uint8>();
    valuePtr.ref.data = value;
    data = valuePtr;
  }

  
  int get value => data.ref.data;
  set value(int val) => data.ref.data = val;
}