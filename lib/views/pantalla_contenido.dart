import 'package:filosofia_autista/models/filosofo.dart';
import 'package:flutter/material.dart';

class PantallaContenido extends StatelessWidget {
  // Dato que recibimos de la pantalla principal.
  final Filosofo filosofo;

  const PantallaContenido({super.key, required this.filosofo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // El AppBar agrega SOLO por defecto la flecha de regreso, porque
      // esta pantalla se abrió con Navigator.push. Al tocarla, Flutter
      // hace exactamente lo mismo que Navigator.pop(context).
      appBar: AppBar(title: const Text('Contenido')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 12),
            // Misma imagen representativa que la tarjeta de origen.

            Image.asset(
              filosofo.imagen,
              width: 400,
              height: 400,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),
            Text(
              filosofo.nombre,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              filosofo.descripcion,
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 15, height: 1.4),
            ),
            // Spacer empuja el botón hacia la parte inferior de la pantalla.
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                // pop() cierra esta pantalla y regresa a la anterior.
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Regresar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
