import 'package:flutter/material.dart';

class AnimalsPage extends StatelessWidget {
  const AnimalsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Center(
          child: Text(
            'El gato =>> The cat\nEl perro =>> The dog\nEl ratón =>> The mouse\nEl caballo =>> The horse\nEl pájaro =>> The bird\nLa serpiente =>> The snake\nEl pez =>> The fish\nLa vaca =>> The cow\nEl cerdo =>> The pig\nLa oveja =>> The sheep',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
