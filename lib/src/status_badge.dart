import 'package:flutter/material.dart';

import 'design_tokens.dart';

/// Compact semantic status label.
class StatusBadge extends StatelessWidget {
  /// Creates a compact label for communicating a semantic status.
  const StatusBadge({
    super.key,
    required this.label,
    this.tone = StatusTone.neutral,
    this.icon,
  });
  /// Text shown inside the badge.
  final String label;

  /// Semantic color treatment applied to the badge.
  final StatusTone tone;

  /// Optional icon displayed before the label.
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final colors =
        Theme.of(context).extension<DesignColors>() ?? DesignColors.light;
    final foreground = switch (tone) {
      StatusTone.success => colors.success,
      StatusTone.warning => colors.warning,
      StatusTone.error => colors.error,
      StatusTone.neutral => colors.onSurface,
    };
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: DesignSpacing.sm,
        vertical: DesignSpacing.xxs,
      ),
      decoration: BoxDecoration(
        color: foreground.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14, color: foreground),
            const SizedBox(width: DesignSpacing.xxs),
          ],
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium
                ?.copyWith(color: foreground, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

/// Semantic color choices for [StatusBadge].
enum StatusTone {
  /// Uses the theme's standard foreground color.
  neutral,

  /// Indicates a successful or completed state.
  success,

  /// Indicates a state that needs attention.
  warning,

  /// Indicates a failed or problematic state.
  error,
}
