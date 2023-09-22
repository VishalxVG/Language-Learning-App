import 'package:flutter/material.dart';

class CommonPhrasesPage extends StatelessWidget {
  const CommonPhrasesPage({super.key});

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
            'Hola, ¿cómo estás?   >>   Hello, how are you?\nMe llamo   >>   My name is...\nMucho gusto   >>   Nice to meet you\nCómo te llamas   >>   Whats your name\nGracias   >>   Thank you\nPor favor   >>   Please\nLo siento   >>   Im sorry\nAdiós   >>   Goodbye\nHablas inglés   >> Do you speak english',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
