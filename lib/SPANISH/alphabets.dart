import 'package:flutter/material.dart';

class AlphabetsPage extends StatelessWidget {
  const AlphabetsPage({super.key});

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
            'A =>> a\nB =>> be\nC =>> ce\nD =>> de\nE =>> e\nF =>> efe\nG =>> ge\nH =>> hache\nI =>> i\nJ =>> jota\nK =>> ka\nL =>> ele\nM =>> eme\nN =>> ene\nO =>> o\nP =>> pe\nQ =>> cu\nR =>> ere\nS =>> ese\nT =>> te\nU =>> u\nV =>> uve\nW =>> doble ve\nX =>> equis\nY =>> i griega\nZ =>> zeta',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
