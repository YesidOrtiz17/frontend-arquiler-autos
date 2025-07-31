import 'package:flutter/material.dart';
import 'package:flutter_arquiler_autos/views/menuPrincipal.dart';
import 'package:flutter_arquiler_autos/views/registerScreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final Color fondo = Color(0xFFAFDDFF);
  final Color encabezado = Color(0xFF60B5FF);
  final Color campos = Color(0xFFFFECDB);
  final Color boton = Color(0xFFFF9149);
  final Color texto = Color(0xFF222222);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Icon(Icons.person_pin, size: 100, color: encabezado),
            SizedBox(height: 16),
            Text(
              "Bienvenido",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: encabezado,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Inicia sesión para continuar",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: texto.withOpacity(0.7)),
            ),
            SizedBox(height: 90),
            TextField(
              style: TextStyle(color: texto),
              decoration: InputDecoration(
                labelText: "Correo Electrónico",
                labelStyle: TextStyle(color: texto),
                filled: true,
                fillColor: campos,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              style: TextStyle(color: texto),
              decoration: InputDecoration(
                labelText: "Contraseña",
                labelStyle: TextStyle(color: texto),
                prefixIcon: Icon(Icons.password, color: encabezado),
                filled: true,
                fillColor: campos,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Menuprincipal()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: boton,
                minimumSize: Size(double.infinity, 48),
              ),
              child: Text(
                "Iniciar Sesión",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '¿olvidaste tu cpontraseña?',
                  style: TextStyle(color: texto),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Recuperar',
                    style: TextStyle(
                      color: encabezado,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 12),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("¿No tienes una cuenta? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Text(
                    "Registrarse",
                    style: TextStyle(
                      color: Colors.pink[200],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
