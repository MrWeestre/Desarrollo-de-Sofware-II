import 'package:flutter/material.dart';

/// Clase centralizadora de breakpoints y paddings según la pantalla (Sesión 10).
class AppLayout {
  final double anchoPantalla;

  const AppLayout(this.anchoPantalla);

  /// Factory para obtener la dimensión directamente desde el BuildContext
  factory AppLayout.of(BuildContext context) {
    return AppLayout(MediaQuery.sizeOf(context).width);
  }

  // Breakpoints de clasificación de pantalla
  bool get esMobil => anchoPantalla < 600;
  bool get esTablet => anchoPantalla >= 600 && anchoPantalla < 840;
  bool get esEscritorio => anchoPantalla >= 840;

  // Adaptación de padding perimetral según dispositivo
  EdgeInsets get paddingPantalla => esMobil
      ? const EdgeInsets.all(16)
      : const EdgeInsets.symmetric(horizontal: 32, vertical: 24);
}