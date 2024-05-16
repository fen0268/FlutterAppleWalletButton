import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_apple_wallet_button_platform_interface.dart';

/// An implementation of [FlutterAppleWalletButtonPlatform] that uses method channels.
class MethodChannelFlutterAppleWalletButton extends FlutterAppleWalletButtonPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_apple_wallet_button');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> requestAppleWallet() async {
    await methodChannel.invokeMethod<void>('requestAppleWallet');
  }
}
