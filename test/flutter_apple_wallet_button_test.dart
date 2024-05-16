import 'package:flutter_apple_wallet_button/flutter_apple_wallet_button_method_channel.dart';
import 'package:flutter_apple_wallet_button/flutter_apple_wallet_button_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterAppleWalletButtonPlatform
    with MockPlatformInterfaceMixin
    implements FlutterAppleWalletButtonPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<void> requestAppleWallet() {
    throw UnimplementedError('requestAppleWallet() has not been implemented.');
  }
}

void main() {
  final FlutterAppleWalletButtonPlatform initialPlatform =
      FlutterAppleWalletButtonPlatform.instance;

  test('$MethodChannelFlutterAppleWalletButton is the default instance', () {
    expect(
        initialPlatform, isInstanceOf<MethodChannelFlutterAppleWalletButton>());
  });
}
