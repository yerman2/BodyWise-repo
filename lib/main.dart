import 'package:flutp1/pages/change_pass.dart';
import 'package:flutp1/pages/login_page.dart';
import 'package:flutp1/pages/register_page.dart';
import 'package:flutp1/pages/sesion_init.dart';
import 'package:flutter/material.dart';
import 'package:flutp1/pages/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BodyWise',
      // home: login(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home':(context) => const login(),
        '/register': (context) => const register(),
        '/change_pass': (context) => const change_pass(),
        '/sesion_init': (context) => const sesion_init(),
        
      },
    );
  }
}

