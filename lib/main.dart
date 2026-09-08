import 'package:flutter/material.dart';
import 'oportunidad_con_error.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: oportunidadConError(),
      ),
    ),
  ));
}