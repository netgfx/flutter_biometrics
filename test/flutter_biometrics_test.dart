import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_biometrics/flutter_biometrics.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_biometrics');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterBiometrics.platformVersion, '42');
  });
}