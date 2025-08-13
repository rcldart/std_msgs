// src/header.dart

import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:rcldart_utils/rcldart_utils.dart';
import 'package:std_msgs/src/string.dart';
import 'package:std_msgs/src/time.dart';



base class std_msgs__msg__Header extends ffi.Struct {
  external builtin_interfaces__msg__Time stamp;
  external rosidl_runtime_c__String frame_id;
}

// Header type - needs proper ROS2 struct definition
class StdMsgsHeader extends BaseRosMessage<std_msgs__msg__Header> {
  @override
  String get typeName => 'Header';

  late StdMsgsTime stamp;
  late StdMsgsString frameId;

  StdMsgsHeader({String frameId = 'base_link'}) {
    data = malloc<std_msgs__msg__Header>();
    stamp = StdMsgsTime();
    this.frameId = StdMsgsString(frameId);

    // Set current time
    var now = DateTime.now();
    stamp.sec = now.millisecondsSinceEpoch ~/ 1000;
    stamp.nanosec = (now.microsecondsSinceEpoch % 1000000) * 1000;

    data.ref.stamp = stamp.data.ref;
    data.ref.frame_id = this.frameId.data.ref;
  }

  @override
  void dispose() {
    stamp.dispose();
    frameId.dispose();
    super.dispose();
  }
}
