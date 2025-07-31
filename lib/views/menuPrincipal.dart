import 'package:flutter/material.dart';
import 'package:flutter_arquiler_autos/views/detalleVehiculo.dart';
import 'package:flutter_arquiler_autos/views/loginScreen.dart';
import 'package:flutter_arquiler_autos/views/menuDrawerPerfil.dart';

class Menuprincipal extends StatefulWidget {
  @override
  _MenuprincipalState createState() => _MenuprincipalState();
}

class _MenuprincipalState extends State<Menuprincipal> {
  final Color fondo = Color(0xFFFFFFFF);
  final Color primario = Color(0xFF60B5FF);
  final Color secundario = Color(0xFFAFDDFF);
  final Color detalle = Color(0xFFFF9149);
  final Color texto = Color(0xFF222222);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      drawer: Menudrawerperfil(),
      appBar: AppBar(
        title: Text("Alquiler de Vehiculos"),
        backgroundColor: primario,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: primario),
                hintText: "Buscar vehículo",
                hintStyle: TextStyle(color: texto.withOpacity(0.5)),
                filled: true,
                fillColor: secundario,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: listaDeAutos.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.network(
                      listaDeAutos[index]['imageUrl'],
                      width: 50,
                      height: 50,
                    ),
                    title: Text(
                      '${listaDeAutos[index]['marca']} Modelo ${listaDeAutos[index]['modelo']}',
                    ),
                    subtitle: Text(
                      'Año ${listaDeAutos[index]['año']} - ${listaDeAutos[index]['precio']}',
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue[300],
                    ),
                    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetalleVehiculo(
            auto: listaDeAutos[index],
          ),
        ),
      );
    },
                  );
                },
                
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Loginscreen()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: "Alquiler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Usuario",
          ),
        ],
      ),
    );
  }
}
List<Map<String, dynamic>> listaDeAutos = [
  {
    'marca': 'Toyota',
    'modelo': 'Corolla',
    'año': "2022",
    'disponibilidad': 1,
    'precio': '\$20,000',
    'imageUrl': 'https://picsum.photos/330/200',
  },
  {
    'marca': 'Nissan',
    'modelo': 'Sentra',
    'año': "2021",
    'disponibilidad': 1,
    'precio': '\$89.99/dia',
    'imageUrl': 'https://picsum.photos/330/200',
  },
  {
    'marca': 'Ford',
    'modelo': 'Mustang',
    'año': "2023",
    'disponibilidad': 0,
    'precio': '\$199.99/dia',
    'imageUrl': 'https://picsum.photos/330/200',
  },
  {
    'marca': 'Chevrolet',
    'modelo': 'Camaro',
    'año': "2020",
    'disponibilidad': 1,
    'precio': '\$150.00/dia',
    'imageUrl': 'https://picsum.photos/330/200',
  },
];
