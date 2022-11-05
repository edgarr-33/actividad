import 'package:actividad_mapa/pages/home_page.dart';
import 'package:actividad_mapa/pages/login.dart';
import 'package:actividad_mapa/pages/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App prueba',
      initialRoute: 'Login',
      routes: {
        'HomePage':(context) => HomePage(),
        'Login':(context) => Login(),
        'Registro':(context) => const RegistroUsuario()

      },
    );
  }
}




