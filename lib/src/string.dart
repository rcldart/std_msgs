// src/string.dart

import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';


/// An array of 8-bit characters terminated by a null byte.
final class rosidl_runtime_c__String extends ffi.Struct {
  /// The pointer to the first character, the sequence ends with a null byte.
  external ffi.Pointer<ffi.Char> data;

  /// The length of the string (excluding the null byte).
  @ffi.Size()
  external int size;

  /// The capacity represents the number of allocated bytes (including the null byte).
  @ffi.Size()
  external int capacity;
}

// String type - Following your existing pattern from std_msgs_string.dart
class StdMsgsString extends BaseRosMessage<rosidl_runtime_c__String> {
  @override
  String get typeName => 'String';

  StdMsgsString(String message) {

    var valuePtr = calloc<rosidl_runtime_c__String>();
    valuePtr.ref.data = message.toNativeUtf8().cast<ffi.Char>();
    data = valuePtr;
  }

  String get value {
    // return data.ref.data.cast<Utf8>().toDartString(length: data.ref.size);

    return data.ref.data.cast<Utf8>().toDartString();
  }

  set value(String val) {
    final rosidl_runtime_c__String__assign = rosidlGeneratorDylib
        .lookup<
            ffi.NativeFunction<
                ffi.Bool Function(ffi.Pointer<rosidl_runtime_c__String>,
                    ffi.Pointer<ffi.Char>)>>('rosidl_runtime_c__String__assign')
        .asFunction<
            bool Function(ffi.Pointer<rosidl_runtime_c__String>,
                ffi.Pointer<ffi.Char>)>();

    var rc = rosidl_runtime_c__String__assign(
        data, val.toNativeUtf8().cast<ffi.Char>());
    if (!rc) {
      throw Exception("unable to assign value to stringMsg");
    }
  }
}