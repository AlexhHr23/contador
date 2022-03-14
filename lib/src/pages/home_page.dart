import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //Viable para difinir el estilo del texto
  final estiloTexto = new TextStyle(fontSize: 25);
  final contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Titulo de mi app'),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Número de Clicks',
              style: estiloTexto,
            ),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola mundo');
          //contador++;
        },
      ),
    );
  }
}
