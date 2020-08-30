import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [_pagina1(), _pagina2()],
    ));
  }

  Widget _pagina1() {
    return Stack(
      children: [_colorFondo(), _imagenFondo(), _textos()],
    );
  }

  Widget _colorFondo() {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(108, 192, 208, 1.0));
  }

  Widget _imagenFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50);
    return Column(
      children: [
        SafeArea(
          child: Container(
              margin: EdgeInsets.only(top: 40),
              child: Text('18°', style: textStyle)),
        ),
        Text('Domingo', style: textStyle),
        Expanded(child: Container()),
        Icon(Icons.keyboard_arrow_down, size: 70, color: Colors.white)
      ],
    );
  }

  Widget _pagina2() {
    return Stack(
      children: [_colorFondo(), _botonCentrado()],
    );
  }

  Widget _botonCentrado() {
    final buttonTextStyle = TextStyle(fontSize: 20);
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 208, 1.0),
      child: Center(
        child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.blue,
            textColor: Colors.white,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text('Bienvenidos', style: buttonTextStyle)),
            onPressed: () {}),
      ),
    );
  }
}
