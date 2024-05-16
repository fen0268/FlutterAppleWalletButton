import Flutter
import UIKit
import PassKit

class AppleWalletButtonViewFactory: NSObject, FlutterPlatformViewFactory {
    private var messenger: FlutterBinaryMessenger

    init(messenger: FlutterBinaryMessenger) {
        self.messenger = messenger
        super.init()
    }

    func create(
        withFrame frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?
    ) -> FlutterPlatformView {
        return AppleWalletButtonView(
            frame: frame,
            viewIdentifier: viewId,
            arguments: args,
            binaryMessenger: messenger)
    }

    public func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        return FlutterStandardMessageCodec.sharedInstance()
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
