import 'package:flutter/material.dart';
import 'package:flutter_arquiler_autos/views/medioDePago.dart';

class DetalleVehiculo extends StatelessWidget {
   final Map<String, dynamic> auto;
  const DetalleVehiculo({Key? key, required this.auto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorPrincipal = Colors.pink[200];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrincipal,
        title: const Text('Detalle del Vehículo'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: colorPrincipal!.withOpacity(0.2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/carro.png', 
                  height: 120,
                ),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Marca: Toyota',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Modelo: Corolla'),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Año: 2022'),
                ),
                const SizedBox(height: 8),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Disponibilidad: Disponible',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorPrincipal,
            minimumSize: const Size.fromHeight(48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
           onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MedioPagoScreen()),
    );
  },
          icon: const Icon(Icons.directions_car),
          label: const Text(
            'Alquilar Vehículo',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}