part of '../../flutter_apple_wallet_button.dart';

class AppleWalletButton extends StatelessWidget {
  AppleWalletButton({super.key})
      : constraints = const BoxConstraints.tightFor(
          width: minimumButtonWidth,
          height: minimumButtonHeight,
        ) {
    assert(constraints.debugAssertIsValid());
  }

  /// The default width for the Apple Pay Button.
  static const double minimumButtonWidth = 260;

  /// The default height for the Apple Pay Button.
  static const double minimumButtonHeight = 56;

  /// The constraints used to limit the size of the button.
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: constraints, child: const _UIKitAppleWalletButton());
  }
}

class _UIKitAppleWalletButton extends StatelessWidget {
  const _UIKitAppleWalletButton();

  static const viewType =
      'plugins.flutter_apple_wallet_button/apple_wallet_button';

  @override
  Widget build(BuildContext context) {
    return const UiKitView(
      viewType: _UIKitAppleWalletButton.viewType,
      layoutDirection: TextDirection.ltr,
      creationParamsCodec: StandardMessageCodec(),
    );
  }
}
