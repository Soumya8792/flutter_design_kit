import 'package:flutter/material.dart';

import 'design_tokens.dart';

/// Creates coordinated Material 3 themes and installs [DesignColors].
abstract final class DesignTheme {
  /// Creates a Material 3 light theme using [seedColor] and [fontFamily].
  static ThemeData light({
    Color seedColor = const Color(0xFF4F46E5),
    String? fontFamily,
  }) => _build(Brightness.light, seedColor, fontFamily);

  /// Creates a Material 3 dark theme using [seedColor] and [fontFamily].
  static ThemeData dark({
    Color seedColor = const Color(0xFF4F46E5),
    String? fontFamily,
  }) => _build(Brightness.dark, seedColor, fontFamily);

  static ThemeData _build(
    Brightness brightness,
    Color seedColor,
    String? fontFamily,
  ) {
    final scheme = ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
    );
    final colors = brightness == Brightness.light
        ? DesignColors.light
        : DesignColors.dark;
    final radius = BorderRadius.circular(DesignSpacing.radiusMd);
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      brightness: brightness,
      fontFamily: fontFamily,
      scaffoldBackgroundColor: brightness == Brightness.light
          ? const Color(0xFFF8F8FB)
          : const Color(0xFF101116),
      extensions: <ThemeExtension<dynamic>>[
        colors.copyWith(primary: scheme.primary, onPrimary: scheme.onPrimary),
      ],
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(0, DesignSpacing.controlHeight),
          shape: RoundedRectangleBorder(borderRadius: radius),
          padding: const EdgeInsets.symmetric(horizontal: DesignSpacing.lg),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colors.surface,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: DesignSpacing.md,
          vertical: DesignSpacing.sm,
        ),
        border: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(color: colors.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(color: colors.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(color: scheme.primary, width: 2),
        ),
      ),
      cardTheme: CardThemeData(
        color: colors.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DesignSpacing.radiusLg),
          side: BorderSide(color: colors.outline.withValues(alpha: 0.55)),
        ),
      ),
    );
  }
}
