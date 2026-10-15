import 'package:flutter/material.dart';

/// Semantic colors used by [DesignTheme].
@immutable
class DesignColors extends ThemeExtension<DesignColors> {
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

  final Color primary;
  final Color onPrimary;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color outline;
  final Color success;
  final Color warning;
  final Color error;

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
  const DesignSpacing._();

  static const double xxs = 4;
  static const double xs = 8;
  static const double sm = 12;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;
  static const double radiusSm = 8;
  static const double radiusMd = 12;
  static const double radiusLg = 20;
  static const double controlHeight = 48;
}
