
import 'dart:async';
import 'dart:ffi' as ffi;
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_aubio/aubio_ffi.dart';

final ffi.DynamicLibrary nativeAddLib = Platform.isAndroid
    ? ffi.DynamicLibrary.open("libaubio.so")
    : ffi.DynamicLibrary.process();

class FlutterAubio {
  static const MethodChannel _channel =
      const MethodChannel('flutter_aubio');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    print("$version");
    var instance = new aubio(nativeAddLib);
    var g = instance.new_fmat(10, 5);
    print("${g}");
    var f = instance.new_fvec(10);
    print("${f}");

    return version;
  }
}
