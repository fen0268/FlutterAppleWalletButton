import UIKit
import Flutter
import PassKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}


class AppleWalletButtonView: NSObject, FlutterPlatformView {
    static let buttonMethodChannelName: String = "plugins.flutter_apple_wallet_button/apple_wallet_button"
    private var _view: UIView

    init(
        frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?,
        binaryMessenger messenger: FlutterBinaryMessenger?
    ) {
        _view = PKAddPassButton(addPassButtonStyle: .black)
        super.init()
        createNativeView(view: _view)
    }

    func view() -> UIView {
        return _view
    }

    func createNativeView(view _view: UIView){
        _view.frame = CGRect(x: 0, y: 0, width: 260, height: 56.0)
        _view.clipsToBounds = true
        _view.layer.cornerRadius = 20.0
        
        
    }
}
