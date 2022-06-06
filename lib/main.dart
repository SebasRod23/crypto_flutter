import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Marvel App"),
      ),
      body: HelloWorldStateFulWidget(texto: "Hello there from Obi Wan!"),
    )
  )
);

class HelloWorldStateFulWidget extends StatefulWidget {
  final String texto;
  HelloWorldStateFulWidget({required this.texto});

  @override
  State<HelloWorldStateFulWidget> createState() => _HelloWorldStateFulWidgetState();
}

class _HelloWorldStateFulWidgetState extends State<HelloWorldStateFulWidget> {
  Color _color = Colors.black12;

  void generaNuevoColor(){
    var random = Random();
    setState((){
      _color = Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: generaNuevoColor,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(_color)
        ),
          child: Center(
            child: Text(
                widget.texto,
              style: TextStyle(fontSize: 50.0, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
      ),
    );
  }
}


class HelloThereSW extends StatelessWidget {
  const HelloThereSW({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Text("Hello from Obi Wan");
  }
}