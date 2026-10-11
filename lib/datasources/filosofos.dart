import 'package:filosofia_autista/models/filosofo.dart';
import 'package:flutter/material.dart';

const List<Filosofo> filosofos = [
  Filosofo(
    nombre: "Aristoteles",
    imagen: 'assets/images/aristoteles.png',
    color: Colors.yellow,
    descripcion:
        "Aristóteles fue uno de los más grandes pensadores;"
        " sin embargo, en la gran mayoría de sus textos demuestra"
        " que tiene bastante tendencia al machismo y estudio"
        " el efecto de la bebida en la fertilidad o la inspiración artística,"
        " algo que hoy en día tomamos como un chiste de ese"
        " tío ebrio durante las reuniones familiares.",
  ),
  Filosofo(
    nombre: "Albert Camus",
    imagen: 'assets/images/nonofo.jpg',
    color: Colors.brown,
    descripcion:
        " El mito de Sísifo, de Albert Camus, relata la historia del rey"
        " Sísifo, quien, por engañar a la muerte, fue condenado a subir"
        " una piedra eternamente. Sin embargo, a lo que alude la imagen,"
        " de una manera cómica, es a que debemos tomar con humor las"
        " situaciones que nos causan sufrimiento o estrés"
        " (como el desarrollo de esta app).",
  ),
];
