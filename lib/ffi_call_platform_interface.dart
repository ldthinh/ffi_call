import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ffi_call_method_channel.dart';

abstract class FfiCallPlatform extends PlatformInterface {
  /// Constructs a FfiCallPlatform.
  FfiCallPlatform() : super(token: _token);

  static final Object _token = Object();

  static FfiCallPlatform _instance = MethodChannelFfiCall();

  /// The default instance of [FfiCallPlatform] to use.
  ///
  /// Defaults to [MethodChannelFfiCall].
  static FfiCallPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FfiCallPlatform] when
  /// they register themselves.
  static set instance(FfiCallPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
