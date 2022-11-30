import 'package:flutter/material.dart';

class Respuesta extends StatelessWidget {

  final VoidCallback selectHandler;
  final String textoRespuesta;
  const Respuesta(this.selectHandler,this.textoRespuesta);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        //color: Colors.blue,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: selectHandler,
        child: Text(textoRespuesta),
      ),
    );
  }
}
