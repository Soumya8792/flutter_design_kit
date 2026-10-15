import 'package:flutter/material.dart';

import 'design_tokens.dart';

/// A content card with consistent padding and an optional tap action.
class AppCard extends StatelessWidget {
  /// Creates a card containing [child] with optional tap handling and padding.
  const AppCard({
    super.key,
    required this.child,
    this.onTap,
    this.padding = const EdgeInsets.all(DesignSpacing.md),
  });
  /// Content displayed inside the card.
  final Widget child;

  /// Optional callback invoked when the card is tapped.
  final VoidCallback? onTap;

  /// Insets applied around [child].
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) => Card(
    clipBehavior: Clip.antiAlias,
    child: InkWell(
      onTap: onTap,
      child: Padding(padding: padding, child: child),
    ),
  );
}
