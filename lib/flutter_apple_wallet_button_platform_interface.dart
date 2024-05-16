import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_apple_wallet_button_method_channel.dart';

abstract class FlutterAppleWalletButtonPlatform extends PlatformInterface {
  /// Constructs a FlutterAppleWalletButtonPlatform.
  FlutterAppleWalletButtonPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterAppleWalletButtonPlatform _instance = MethodChannelFlutterAppleWalletButton();

  /// The default instance of [FlutterAppleWalletButtonPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterAppleWalletButton].
  static FlutterAppleWalletButtonPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterAppleWalletButtonPlatform] when
  /// they register themselves.
  static set instance(FlutterAppleWalletButtonPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  } 

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> requestAppleWallet() {
    throw UnimplementedError('requestAppleWallet() has not been implemented.');
  }
}
