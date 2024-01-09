import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_circular_text/circular_text.dart';

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
    return Scaffold(
      appBar: AppBar(
          // title: const Text('Reportar'),
          ),
      body: const Center(
        child: SesionInitForm(),
      ),
    );
  }
}

class SesionInitForm extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SesionInitForm({Key? key});

  // Define la variable para el espacio entre las filas
  static const double espacioEntreFilas = 40.0;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.start, // Cambiado a MainAxisAlignment.start
        children: [
          CircularText(
            children: [
              TextItem(
                text: const Text(
                  '¿Qué quieres hacer?',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                space: 8,
                startAngle: -90,
                startAngleAlignment: StartAngleAlignment.center,
                direction: CircularTextDirection.clockwise,
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Image.asset('assets/images/foro.png',
                            fit: BoxFit.contain, height: 90.0),
                      ),
                      const Text("Foro",
                          style: TextStyle(fontSize: 22, color: Colors.black)),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Image.asset('assets/images/informacion.png',
                            fit: BoxFit.contain, height: 90.0),
                      ),
                      const Text("Información",
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Espacio controlable entre las dos filas
          const SizedBox(height: espacioEntreFilas),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Flexible(
                //   child: Column(
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 8.0),
                //         child: Image.asset('assets/images/farmacia.png',
                //             fit: BoxFit.contain, height: 90.0),
                //       ),
                //       const Text("Farmacia",
                //           style: TextStyle(fontSize: 15, color: Colors.black)),
                //     ],
                //   ),
                // ),
                //// Flexible(
                //   child: Column(
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 8.0),
                //         child: Image.asset('assets/images/centro_salud.png',
                //             fit: BoxFit.contain, height: 90.0),
                //       ),
                //       const Text("Centro de Salud",
                //           style: TextStyle(fontSize: 15, color: Colors.black)),
                //     ],
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    // Acción que deseas realizar al hacer clic en la imagen o el texto
                    // Puedes navegar a otra ruta utilizando Navigator, por ejemplo:
                    // Navigator.pushNamed(context, '/nueva_ruta');
                    // ignore: avoid_print
                    print('Clic en Farmacia');
                  },
                  child: Flexible(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/farmacia.png',
                              fit: BoxFit.contain, height: 90.0),
                        ),
                        const Text("Farmacia",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/marcadormap.png',
                              fit: BoxFit.contain, height: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Acción que deseas realizar al hacer clic en la imagen o el texto
                    // Puedes navegar a otra ruta utilizando Navigator, por ejemplo:
                    // Navigator.pushNamed(context, '/nueva_ruta');
                    // ignore: avoid_print
                    print('Clic en Centro de Salud');
                  },
                  child: Flexible(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/centro_salud.png',
                              fit: BoxFit.contain, height: 90.0),
                        ),
                        const Text("Centro de Salud",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/marcadormap.png',
                              fit: BoxFit.contain, height: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
