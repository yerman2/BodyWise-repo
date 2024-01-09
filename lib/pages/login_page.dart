import 'package:flutter/material.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       // appBar: AppBar(
      //   title: const Text('Login'),
      // ),
      body: Center(
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
                const Offset(0, -20), // Sube la imagen 30 unidades hacia arriba
            child: const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/logo1.png'),
            ),
          ),

          // const Divider(),

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
          const SizedBox(height: 4),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/change_pass');
                },
                child: const Text(
                  '¿Olvidaste tu usuario o contraseña?',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black), // Ajusta el tamaño y el color
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Expanded(
                   child: Text('¿Ya tiene una cuenta? Crea una nueva cuenta',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black), // Ajusta el tamaño y el color),
                  
                ),
              ),
              )
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sesion_init');
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(253, 202, 225, 1)), // Cambia el color de fondo
              textStyle: MaterialStateProperty.all<TextStyle>(
                const TextStyle(
                    fontSize: 18,
                    color:Colors.white), // Ajusta el tamaño y el color del texto
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.symmetric(vertical: 16, horizontal: 24), // Ajusta el padding
              ),
              // Otros estilos que desees aplicar
            ),
            child: const Text('Iniciar Sesión',
            style: TextStyle(fontSize: 18, color: Colors.black)),
          ),

          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  // Acción cuando se presiona "¿Olvidaste tu contraseña?"
                },
                child: const Text(
                  'Vincular cuenta de Google',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black), // Ajusta el tamaño y el color
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ],
      ),
    );
  }
}