import 'package:flutter/material.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ReginForm(),
      ),
    );
  }
}

class ReginForm extends StatelessWidget {
  const ReginForm({super.key});
  
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Text("Hola, Pagina Para Registrarse"),
    );
  }
  
  }