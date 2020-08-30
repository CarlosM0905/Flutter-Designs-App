import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto()
        ],
      ),
    ));
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Text(
                      'Lago con un puente',
                      style: titleStyle,
                    ),
                  ),
                  Text(
                    'Un lago en Alemania',
                    style: subtitleStyle,
                  )
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30),
            Text(
              '41',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'LLAMAR'),
        _accion(Icons.near_me, 'RUTAS'),
        _accion(Icons.share, 'COMPARTIR'),
      ],
    );
  }

  Widget _accion(IconData icon, String text) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5),
          child: Icon(
            icon,
            color: Colors.blue,
            size: 40,
          ),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue, fontSize: 15),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Text(
          'Sit ipsum sit mollit incididunt aliquip deserunt dolore officia quis nisi sit irure. Et duis nisi aliquip tempor exercitation laboris magna laboris sunt pariatur duis ipsum qui officia. Irure commodo sit sunt exercitation. Eiusmod labore eiusmod fugiat consequat eu quis ea est aliquip do ullamco. Commodo mollit nulla consectetur sit magna sint dolor duis reprehenderit aute id ut dolore ipsum. Amet cillum laboris sit nostrud culpa non mollit mollit ut ipsum ipsum aliquip officia anim. Sint do veniam elit officia dolore.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
