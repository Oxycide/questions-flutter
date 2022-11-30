import 'package:flutter/material.dart';
import './pregunta.dart';
import './respuesta.dart';
import 'dart:developer';

//void main() {
//  runApp(MiPrueba());
//}
void main() => runApp(const MiPrueba());

class MiPrueba extends StatefulWidget {
  const MiPrueba({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MiPruebaState();
  }
}

class _MiPruebaState extends State<MiPrueba> {
  var _preguntaIndex = 0;
  var preguntas = [
    {
      'textoPregunta': '¿Cual es su color favorito?',
      'respuestas': ['Blanco', 'Rojo', 'Verde', 'Azul'],
    },
    {
      'textoPregunta': '¿Cual es su mascota favorita?',
      'respuestas': ['Gato', 'Perro', 'Loro'],
    },
    {
      'textoPregunta': '¿Cual es su equipo favorito?',
      'respuestas': ['Francia', 'España', 'Brasil', 'Japon'],
    },
    {
      'textoPregunta': '¿Cual es su comida favorita?',
      'respuestas': ['Pizza', 'Hamburguesa', 'Pasta', 'Sushi'],
    },
    {
      'textoPregunta': '¿Cual es su bebida favorita?',
      'respuestas': ['Cerveza', 'Vino', 'Ron', 'Tequila'],
    },
  ];
  void _respuestaPregunta() {

      setState(() {
        _preguntaIndex++;
      });


  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplicacion Prueba'),
        ),
        body: Column(
          children: [
            if (_preguntaIndex < preguntas.length) ...[
              Pregunta(preguntas[_preguntaIndex]['textoPregunta'] as String),
              ...(preguntas[_preguntaIndex]['respuestas'] as List<String>)
                  .map((respuesta) {
                return Respuesta(_respuestaPregunta, respuesta);
              }).toList()
            ] else ...[
              const Center(
                child: Text('No hay mas preguntas'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _preguntaIndex = 0;
                  });
                },
                child: const Text('Reiniciar'),
              )
            ]
          ],
        ),
      ),
    );
  }
}
