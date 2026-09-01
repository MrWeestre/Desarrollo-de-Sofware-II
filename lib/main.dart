import 'package:flutter/material.dart';
import 'pantalla_principal.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF4F1EA),
      ),
      home: const PantallaPrincipalAuditoria(),
    );
  }
}