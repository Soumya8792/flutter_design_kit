import 'package:flutter/material.dart';

import 'design_tokens.dart';

/// A branded button with primary, secondary, and text treatments.
class AppButton extends StatelessWidget {
  /// Creates a button with a label and optional icon or loading indicator.
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.icon,
    this.isLoading = false,
    this.expand = false,
  });

  /// Text displayed inside the button.
  final String label;

  /// Called when the button is activated; `null` disables the button.
  final VoidCallback? onPressed;

  /// Visual treatment used for this button.
  final AppButtonVariant variant;

  /// Optional icon displayed before [label].
  final IconData? icon;

  /// Whether to show a progress indicator and disable activation.
  final bool isLoading;

  /// Whether the button should fill the available horizontal space.
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final child = Row(
      mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isLoading) ...[
          const SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
          const SizedBox(width: DesignSpacing.xs),
        ] else if (icon != null) ...[
          Icon(icon, size: 18),
          const SizedBox(width: DesignSpacing.xs),
        ],
        Text(label),
      ],
    );
    final button = switch (variant) {
      AppButtonVariant.primary => FilledButton(
        onPressed: isLoading ? null : onPressed,
        child: child,
      ),
      AppButtonVariant.secondary => OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        child: child,
      ),
      AppButtonVariant.tertiary => TextButton(
        onPressed: isLoading ? null : onPressed,
        child: child,
      ),
    };
    return expand ? SizedBox(width: double.infinity, child: button) : button;
  }
}

/// Available visual treatments for [AppButton].
enum AppButtonVariant {
  /// Emphasized filled button.
  primary,

  /// Outlined button for secondary actions.
  secondary,

  /// Text-only button for lower emphasis actions.
  tertiary,
}
