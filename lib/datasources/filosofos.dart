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
        "El mito de Sísifo, de Albert Camus, relata la historia del rey"
        " Sísifo, quien, por engañar a la muerte, fue condenado a subir"
        " una piedra eternamente. Sin embargo, a lo que alude la imagen,"
        " de una manera cómica, es a que debemos tomar con humor las"
        " situaciones que nos causan sufrimiento o estrés"
        " (como el desarrollo de esta app).",
  ),
  Filosofo(
    nombre: "Socrates",
    imagen: 'assets/images/socrates.jpg',
    color: Colors.blue,
    descripcion:
        "Sócrates se planteó que realmente no tenemos conocimiento"
        " de nada, ya que no podemos comprender en su totalidad el"
        " universo. Este es el principio fundamental de la ignorancia"
        " socrática. Para Sócrates, reconocer la propia ignorancia"
        " es el primer paso indispensable para ir en busca de la verdad."
        " El meme representa, de una manera más burlesca, la situación"
        " en la que uno cree no saber nada, haciendo referencia"
        " a su conocimiento sobre cualquier tema.",
  ),
  Filosofo(
    nombre: "Descartes",
    imagen: 'assets/images/descartes.jpg',
    color: Colors.red,
    descripcion:
        "La máxima del filósofo Descartes nos plantea que"
        " no podemos creer enteramente en la existencia,"
        " al no tener claro si algo realmente existe."
        " Sin embargo, podemos estar seguros de nuestra"
        " propia existencia en el momento en que pensamos,"
        " ya que somos conscientes de ello. El meme representa"
        " una crítica a esas personas que parece que no piensan,"
        " pero que, aun así, existen.",
  ),
  Filosofo(
    nombre: "Diogenes",
    imagen: 'assets/images/diogenes.png',
    color: Colors.white,
    descripcion:
        "Esto es más un relato sobre Diógenes. Una tarde,"
        " Platón intentaba definir lo que era un hombre,"
        " llegando a la conclusión de que es un ser bípedo"
        " carente de plumas. A lo que Diógenes, como el buen"
        " desquehacerado que era, desplumó un pollo, lo llevó"
        " frente a Platón y dijo: «He aquí el hombre de Platón».",
  ),
];
