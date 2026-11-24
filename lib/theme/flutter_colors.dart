import 'package:flutter/widgets.dart';

/// Paleta de colores de la marca Flutter.
///
/// Los azules provienen del logotipo oficial de Flutter; el teal es el acento
/// de Dart. Usarlos en toda la UI da identidad visual "Flutter".
abstract final class AppColors {
  // Azules del logo de Flutter.
  static const Color flutterDark = Color(0xFF02569B);
  static const Color flutterMedium = Color(0xFF0175C2);
  static const Color flutterLight = Color(0xFF13B9FD);
  static const Color flutterLighter = Color(0xFF54C5F8);

  // Acento de Dart.
  static const Color dartTeal = Color(0xFF00D2B8);

  // Superficies.
  static const Color background = Color(0xFFF3F7FC);
  static const Color surface = Color(0xFFFFFFFF);

  // Texto.
  static const Color textPrimary = Color(0xFF0B1E2D);
  static const Color textSecondary = Color(0xFF5A6B7F);
  static const Color textOnBrand = Color(0xFFFFFFFF);
}
