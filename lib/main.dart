import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Center(
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
      color: const Color.fromRGBO(255, 208, 138, 1),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.translate(
            offset:
                const Offset(0, -40), // Sube la imagen 30 unidades hacia arriba
            child: const CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('assets/images/logo1.png'),
            ),
          ),
          // TextField Usuario
          const Text(
            'Usuario:',
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
          const SizedBox(
              width: 260,
              child: TextField(
                  decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                // hintText: "Usuario",
                hintStyle: TextStyle(color: Colors.black),
              ))),

          const SizedBox(height: 20),
          // TextField Clave
          const Text(
            'Contraseña:',
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
          SizedBox(
              width: 260,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.2),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(18.2)),
                  // hintText: "Contraseña",
                  hintStyle: const TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: const Color.fromRGBO(246, 192, 182, 1),
                ),
                obscureText: true,
              )),

          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // Acción cuando se presiona "¿Olvidaste tu contraseña?"
                },
                child: const Text('¿Olvidaste tu contraseña?'),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    // Acción cuando se presiona "Crear una nueva cuenta"
                  },
                  child: const Text('Crear una nueva cuenta'),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // Acción cuando se presiona el botón de inicio de sesión
            },
            child: const Text('Iniciar Sesión'),
          ),
          const SizedBox(height: 12),
          const Text('¿Ya tienes cuenta?'),
          ElevatedButton(
            onPressed: () {
              // Acción cuando se presiona el botón de inicio de sesión
            },
            child: const Text('Vincular cuenta de Google'),
          ),
        ],
      ),
    );
  }
}
