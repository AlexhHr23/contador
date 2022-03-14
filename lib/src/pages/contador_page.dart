import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  //Viable para difinir el estilo del texto
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _contador = 0;

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
              'Número de taps',
              style: _estiloTexto,
            ),
            Text(
              '$_contador',
              style: _estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  //Método para crear los tres botones
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: reiniciar,
        ),
        Expanded(
          child: SizedBox(
            width: 5.0,
          ),
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: decrementar,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: incrementar,
        ),
      ],
    );
  }

  void incrementar() {
    setState(() => _contador++);
  }

  void decrementar() {
    setState(() => _contador--);
  }

  void reiniciar() {
    setState(() => _contador = 0);
  }
}
