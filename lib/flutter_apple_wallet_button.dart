import 'package:flutter_apple_wallet_button/flutter_apple_wallet_button_method_channel.dart';

import 'flutter_apple_wallet_button_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

part 'src/flutter_apple_wallet_button.dart';

class FlutterAppleWalletButton {

  Future<void> requestAppleWallet() async {
    final instance = FlutterAppleWalletButtonPlatform.instance
        as MethodChannelFlutterAppleWalletButton;
    return instance.requestAppleWallet();
  }
}
