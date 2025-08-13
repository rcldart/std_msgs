// src/uint64.dart


import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';



base class std_msgs__msg__Uint64 extends ffi.Struct {
  @ffi.Uint64()
  external int data;

  /// The length of the string (excluding the null byte).
  @ffi.Size()
  external int size;

  /// The capacity represents the number of allocated bytes (including the null byte).
  @ffi.Size()
  external int capacity;
}

// UInt64 type
class StdMsgsUInt64 extends BaseRosMessage<std_msgs__msg__Uint64> {
  @override
  String get typeName => 'UInt64';

  StdMsgsUInt64(int value) {
    var valuePtr = calloc<std_msgs__msg__Uint64>();
    valuePtr.ref.data = value;
    data = valuePtr;
  }

  int get value => data.ref.data;
  set value(int val) => data.ref.data = val;
}
