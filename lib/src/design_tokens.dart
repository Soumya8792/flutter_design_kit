import 'package:flutter/material.dart';

/// Semantic colors used by [DesignTheme].
@immutable
class DesignColors extends ThemeExtension<DesignColors> {
  /// Creates semantic colors for surfaces, content, and status feedback.
  const DesignColors({
    required this.primary,
    required this.onPrimary,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.outline,
    required this.success,
    required this.warning,
    required this.error,
  });

  /// Main brand color.
  final Color primary;

  /// Color used for content on [primary].
  final Color onPrimary;

  /// Default component and card surface color.
  final Color surface;

  /// Default foreground color on surfaces.
  final Color onSurface;

  /// Alternate, subdued surface color.
  final Color surfaceVariant;

  /// Color used for borders and outlines.
  final Color outline;

  /// Color used for successful states.
  final Color success;

  /// Color used for warning states.
  final Color warning;

  /// Color used for error states.
  final Color error;

  /// Default semantic colors for light themes.
  static const light = DesignColors(
    primary: Color(0xFF4F46E5),
    onPrimary: Colors.white,
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF171827),
    surfaceVariant: Color(0xFFF3F4F8),
    outline: Color(0xFFD8DAE5),
    success: Color(0xFF16834A),
    warning: Color(0xFFA15C00),
    error: Color(0xFFBA1A1A),
  );

  /// Default semantic colors for dark themes.
  static const dark = DesignColors(
    primary: Color(0xFFB9B5FF),
    onPrimary: Color(0xFF211B75),
    surface: Color(0xFF171821),
    onSurface: Color(0xFFE7E6F0),
    surfaceVariant: Color(0xFF242631),
    outline: Color(0xFF484A57),
    success: Color(0xFF8DDBAA),
    warning: Color(0xFFFFB95C),
    error: Color(0xFFFFB4AB),
  );

  /// Returns a copy with the supplied colors replaced.
  @override
  DesignColors copyWith({
    Color? primary,
    Color? onPrimary,
    Color? surface,
    Color? onSurface,
    Color? surfaceVariant,
    Color? outline,
    Color? success,
    Color? warning,
    Color? error,
  }) => DesignColors(
    primary: primary ?? this.primary,
    onPrimary: onPrimary ?? this.onPrimary,
    surface: surface ?? this.surface,
    onSurface: onSurface ?? this.onSurface,
    surfaceVariant: surfaceVariant ?? this.surfaceVariant,
    outline: outline ?? this.outline,
    success: success ?? this.success,
    warning: warning ?? this.warning,
    error: error ?? this.error,
  );

  /// Interpolates between this set of colors and [other].
  @override
  DesignColors lerp(ThemeExtension<DesignColors>? other, double t) {
    if (other is! DesignColors) return this;
    return DesignColors(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      surfaceVariant: Color.lerp(surfaceVariant, other.surfaceVariant, t)!,
      outline: Color.lerp(outline, other.outline, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
    );
  }
}

/// Spacing, corner radius, and control-size defaults for a design system.
@immutable
class DesignSpacing {
  /// Prevents constructing instances; use the static token values.
  const DesignSpacing._();

  /// Extra-extra-small spacing (4 logical pixels).
  static const double xxs = 4;
  /// Extra-small spacing (8 logical pixels).
  static const double xs = 8;
  /// Small spacing (12 logical pixels).
  static const double sm = 12;
  /// Medium spacing (16 logical pixels).
  static const double md = 16;
  /// Large spacing (24 logical pixels).
  static const double lg = 24;
  /// Extra-large spacing (32 logical pixels).
  static const double xl = 32;
  /// Extra-extra-large spacing (48 logical pixels).
  static const double xxl = 48;
  /// Small corner radius (8 logical pixels).
  static const double radiusSm = 8;
  /// Medium corner radius (12 logical pixels).
  static const double radiusMd = 12;
  /// Large corner radius (20 logical pixels).
  static const double radiusLg = 20;
  /// Standard interactive control height (48 logical pixels).
  static const double controlHeight = 48;
}
