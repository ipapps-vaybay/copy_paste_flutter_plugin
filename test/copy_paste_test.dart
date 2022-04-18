import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:copy_paste/copy_paste.dart';

void main() {
  const MethodChannel channel = MethodChannel('copy_paste');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await CopyPaste.copyToClipboard("text"), '');
  });
}
