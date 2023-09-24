import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ffi_call_platform_interface.dart';

/// An implementation of [FfiCallPlatform] that uses method channels.
class MethodChannelFfiCall extends FfiCallPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ffi_call');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
