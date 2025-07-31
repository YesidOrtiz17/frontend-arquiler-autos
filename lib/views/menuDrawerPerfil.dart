import 'package:flutter/material.dart';

class Menudrawerperfil extends StatefulWidget {
  @override
  State<Menudrawerperfil> createState() => _MenudrawerperfilState();
}

class _MenudrawerperfilState extends State<Menudrawerperfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(

        
        title: Text("Perfil"),
        backgroundColor: Color(0xFF60B5FF),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(24.0),
        children: [
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://picsum.photos/330/200',
                scale: 1.0,
              ),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Column(
              children: [
                Text(
                  "Nombre de Usuario",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
          Text("yesid@gmail.com",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
          )),
              ],
            ),
          ),
          SizedBox(height: 32),
          ListTile(
            leading: Icon(Icons.lock, color: Color(0xFF60B5FF)),
            title: Text("Cambiar Contraseña"),
            subtitle: Text("123456789"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.lock, color: Color(0xFF60B5FF)),
            title: Text("Cambiar Contraseña"),
            onTap: () {
              // Acción al tocar Perfil
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.search_rounded, color: Color(0xFFFF9149)),
            title: Text("Revisar Alquileres"),
            onTap: () {
              // Acción al tocar Historial de Alquileres
            },
          ),
          
        ],
      ),
    );
  }
}
