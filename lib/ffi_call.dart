import 'ffi_call_platform_interface.dart';
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'dart:io';


typedef _AddNative = Int32 Function(Int32, Int32);
typedef _Add = int Function(int, int);

class FfiCall {
  Future<String?> getPlatformVersion() {
    return FfiCallPlatform.instance.getPlatformVersion();
  }

  late _Add addFunction;

  FfiCall() {
    // final DynamicLibrary binding = Platform.isAndroid
    //     ? DynamicLibrary.open('libffi_call.so')
    //     : DynamicLibrary.process();
    final DynamicLibrary binding = () {
      if (Platform.isAndroid) {
        return DynamicLibrary.open('libffi_call.so');
      }
      if (Platform.isIOS) {
        print("go hereryerueuhewfhf");
        return DynamicLibrary.open('ffi_call.framework/ffi_call');
      }
      throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
    }();

      addFunction = binding.lookup<NativeFunction<_AddNative>>('sum').asFunction();
    }

  int sumTwoNumber(int a, int b) {
    int res = 0;
    res = addFunction(a, b);
    return res;
  }

}
