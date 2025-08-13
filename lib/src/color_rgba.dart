// src/color_rgba.dart

import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';


// Required ROS2 struct definitions (these should be in your generated bindings)
base class std_msgs__msg__ColorRGBA extends ffi.Struct {
  @ffi.Float()
  external double r;
  @ffi.Float()
  external double g;
  @ffi.Float()
  external double b;
  @ffi.Float()
  external double a;
}


// ColorRGBA type - needs proper ROS2 struct definition
class StdMsgsColorRGBA extends BaseRosMessage<std_msgs__msg__ColorRGBA> {
  @override
  String get typeName => 'ColorRGBA';

  StdMsgsColorRGBA(
      {double r = 0.0, double g = 0.0, double b = 0.0, double a = 1.0}) {
    data = malloc<std_msgs__msg__ColorRGBA>();
    data.ref.r = r;
    data.ref.g = g;
    data.ref.b = b;
    data.ref.a = a;
  }

  double get r => data.ref.r;
  double get g => data.ref.g;
  double get b => data.ref.b;
  double get a => data.ref.a;

  set r(double val) => data.ref.r = val;
  set g(double val) => data.ref.g = val;
  set b(double val) => data.ref.b = val;
  set a(double val) => data.ref.a = val;
}
