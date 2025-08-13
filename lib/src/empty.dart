// src/empty.dart

import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';


// Empty type
class StdMsgsEmpty extends BaseRosMessage<ffi.Uint8> {
  @override
  String get typeName => 'Empty';

  StdMsgsEmpty() {
    data = calloc<ffi.Uint8>();
    data.value = 0; // Empty message has no meaningful data
  }
}
