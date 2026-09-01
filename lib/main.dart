import 'package:flutter/material.dart';
import 'pantalla_bienvenida.dart';
import 'tarjeta_momentos.dart';
import 'pantalla_establecimiento.dart';
import 'pantalla_personal.dart';
import 'pantalla_oportunidades.dart';
import 'oportunidad_con_error.dart';

void main() {
  runApp(const AppAuditoriaHigiene());
}

class AppAuditoriaHigiene extends StatelessWidget {
  const AppAuditoriaHigiene({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auditoría de Higiene de Manos',
      home: const PantallaBienvenida(),
    );
  }
}
