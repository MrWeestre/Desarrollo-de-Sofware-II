import 'package:flutter/material.dart';
import 'pantalla_bienvenida.dart';
import 'tarjeta_momentos.dart';

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
      home: Scaffold(
        backgroundColor: const Color(0xFF006A4E),
        body: SafeArea(
          child: const PantallaBienvenida(),
        ),
      ),
    );
  }
}