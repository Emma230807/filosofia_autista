import 'package:filosofia_autista/datasources/filosofos.dart';
import 'package:filosofia_autista/models/filosofo.dart';
import 'package:filosofia_autista/widgets/targeta_filosofo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<StatefulWidget> createState() => _PantallaPrincipal();
}

class _PantallaPrincipal extends State<PantallaPrincipal> {
  String filtroNombre = '';

  @override
  Widget build(BuildContext context) {
    final visibles = filosofos.where((p) {
      //Filtrar Productos por nombre
      final nombre = p.nombre.toLowerCase();
      final coincideNombre = nombre.contains(filtroNombre.toLowerCase());
      return coincideNombre;
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Filosofia Autista')),
      // GridView.builder arma la rejilla recorriendo el arreglo "carreras".
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Buscar Producto ',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (valor) => setState(() => filtroNombre = valor),
            ),

            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount:
                    visibles.length, // tantas tarjetas como carreras haya
                // Describe la forma de la rejilla: 2 columnas y separación pareja.
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // <-- dos columnas
                  mainAxisSpacing: 14, // espacio vertical entre tarjetas
                  crossAxisSpacing: 14, // espacio horizontal entre tarjetas
                  childAspectRatio: 1.0,
                ),

                // itemBuilder se ejecuta una vez por cada elemento del arreglo.
                itemBuilder: (BuildContext context, int indice) {
                  final Filosofo filosofo = visibles[indice];
                  return TarjetaFilosofo(filosofo: filosofo);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: const Text('Salir'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
