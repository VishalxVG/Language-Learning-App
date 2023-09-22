import 'package:flutter/material.dart';

class SpanishPage extends StatelessWidget {
  const SpanishPage({Key? key}) : super(key: key);

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
        child: const Center(
          child: Text(
            '1   == >>   uno\n2   == >>   dos\n3   == >>   tres\n 4   == >>   cuatro\n5   == >>   cinco\n6   == >>   seis\n7   == >>   siete\n8   == >>   ocho\n9   == >>   nueve\n10   == >>   diez\n50 =>> cincuenta\n100   == >>   cien\n1000   == >>   mil\n10000   == >>   diez mil',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
