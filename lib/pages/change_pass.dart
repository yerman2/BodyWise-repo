import 'package:flutter/material.dart';

// ignore: camel_case_types
class change_pass extends StatefulWidget {
  const change_pass({super.key});

  @override
  State<change_pass> createState() => _change_pass();
}

// ignore: camel_case_types
class _change_pass extends State<change_pass> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Center(
        child: ChangeForm(),
      ),
    );
  }
}

class ChangeForm extends StatelessWidget {
  const ChangeForm({super.key});
  
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Text("Hola, Pagina para cambiar Usuario O Clave"),
    );
  }
}