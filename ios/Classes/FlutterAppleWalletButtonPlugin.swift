import Flutter
import UIKit

public class FlutterAppleWalletButtonPlugin: NSObject, FlutterPlugin {
  private static let methodChannelName = "plugins.flutter_apple_wallet_button/apple_wallet_button"
  private let methodAppleWalletButton = "requestAppleWallet"

  public static func register(with registrar: FlutterPluginRegistrar) {
    let messenger = registrar.messenger()
    let channel = FlutterMethodChannel(name: "FlutterAppleWalletButtonPlugin", binaryMessenger: registrar.messenger())
    let instance: FlutterAppleWalletButtonPlugin = FlutterAppleWalletButtonPlugin()
    registrar.addMethodCallDelegate(FlutterAppleWalletButtonPlugin(), channel: channel)

    let buttonFactory = AppleWalletButtonViewFactory(messenger: messenger)
    registrar.register(buttonFactory, withId: AppleWalletButtonView.buttonMethodChannelName)
  } 

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {

    case "requestAppleWallet":
      print("Requesting Apple Wallet")

    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
