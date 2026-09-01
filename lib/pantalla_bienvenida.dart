import 'package:flutter/material.dart';

class PantallaBienvenida extends StatelessWidget {
  const PantallaBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 88, 101), // Color institucional verde
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          // JUSTIFICACIÓN: Se usa EdgeInsets.all para darle un espaciado uniforme
          // en todos los bordes interiores del contenedor de la pantalla.
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.handshake,
                size: 80,
                color: Colors.white,
              ),
              SizedBox(height: 16),
              Text(
                'ManosSeguras',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Auditoría de adherencia a la higiene de manos',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 16),
              Text(
                'Basado en la Guía Técnica RM N.° 255-2016/MINSA',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.white60),
              ),
            ],
          ),
        ),
      ),
    );
  }
}