import 'package:flutter_test/flutter_test.dart';
import 'package:ffi_call/ffi_call.dart';
import 'package:ffi_call/ffi_call_platform_interface.dart';
import 'package:ffi_call/ffi_call_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFfiCallPlatform
    with MockPlatformInterfaceMixin
    implements FfiCallPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FfiCallPlatform initialPlatform = FfiCallPlatform.instance;

  test('$MethodChannelFfiCall is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFfiCall>());
  });

  test('getPlatformVersion', () async {
    FfiCall ffiCallPlugin = FfiCall();
    MockFfiCallPlatform fakePlatform = MockFfiCallPlatform();
    FfiCallPlatform.instance = fakePlatform;

    expect(await ffiCallPlugin.getPlatformVersion(), '42');
  });
}
