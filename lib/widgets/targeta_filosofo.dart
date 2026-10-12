import 'package:filosofia_autista/datasources/filosofos.dart';
import 'package:filosofia_autista/models/filosofo.dart';
import 'package:filosofia_autista/views/pantalla_contenido.dart';
import 'package:flutter/material.dart';

class TarjetaFilosofo extends StatelessWidget {
  final Filosofo filosofo;

  const TarjetaFilosofo({required this.filosofo});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: filosofo.color, width: 2),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext contexto) =>
                  PantallaContenido(filosofo: filosofo),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // "Imagen representativa": un ícono dentro de un círculo
              // de color. No necesita archivos ni internet.
              Hero(
                tag: filosofo.nombre,
                child: Image.asset(
                  filosofo.imagen,
                  width: 60,
                  height: 60,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                filosofo.nombre,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
