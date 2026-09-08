import 'package:flutter/material.dart';

class AppLayout {
  final double anchoPantalla;

  const AppLayout(this.anchoPantalla);

  // Obtiene el ancho actual de la pantalla.
  factory AppLayout.of(BuildContext context) {
    return AppLayout(
      MediaQuery.sizeOf(context).width,
    );
  }

  // ============================================
  // BREAKPOINTS
  // ============================================

  // Menor a 600 pt.
  bool get esMobil => anchoPantalla < 600;

  // Desde 600 hasta menos de 840 pt.
  bool get esTablet =>
      anchoPantalla >= 600 &&
      anchoPantalla < 840;

  // 840 pt o más.
  bool get esEscritorio =>
      anchoPantalla >= 840;

  // ============================================
  // PADDING RESPONSIVO
  // ============================================

  EdgeInsets get paddingPantalla => esMobil
      ? const EdgeInsets.all(16)
      : const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 24,
        );
}