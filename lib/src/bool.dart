// src/bool.dart
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';

base class std_msgs__msg__Bool extends ffi.Struct {
  @ffi.Uint8()
  external int data;

  /// The length of the string (excluding the null byte).
  @ffi.Size()
  external int size;

  /// The capacity represents the number of allocated bytes (including the null byte).
  @ffi.Size()
  external int capacity;
}

// Bool type
class StdMsgsBool extends BaseRosMessage<std_msgs__msg__Bool> {
  @override
  String get typeName => 'Bool';

  StdMsgsBool(bool value) {
    data = calloc<std_msgs__msg__Bool>();
    data.ref.data = value ? 1 : 0;
  }

  bool get value {
    data = nativeData.cast<std_msgs__msg__Bool>();
    return data.ref.data == 1;
  }

  set value(bool val) {
    var data_ = nativeData.cast<std_msgs__msg__Bool>();
    data_.ref.data = val ? 1 : 0;
    data = data_;
  }
}
