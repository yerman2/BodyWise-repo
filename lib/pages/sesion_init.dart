import 'package:flutter/material.dart';

// ignore: camel_case_types
class sesion_init extends StatefulWidget {
  const sesion_init({super.key});

  @override
  State<sesion_init> createState() => _sesion_init();
}

// ignore: camel_case_types
class _sesion_init extends State<sesion_init> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SesionInitForm(),
      ),
    );
  }
}


class SesionInitForm extends StatelessWidget {
  const SesionInitForm({super.key});
  
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Text("Hola, Pagina De Sesion Iniciada"),
    );
  }
  
  }