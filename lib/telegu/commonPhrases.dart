import 'package:flutter/material.dart';

class TeleguCommonPhrases extends StatelessWidget {
  const TeleguCommonPhrases({super.key});

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
            "నమస్తే (namaste) - Hello/ Greetings \n బాగుంది (bagundi) - It's good/ Alright \n  నేను చేస్తున్నాను (nenu chesthunnaanu) - I am doing it \nనీ పేరు ఏమిటి? (nee peru emiti?) - What is your name? \n ధన్యవాదములు (dhanyavaadhamulu) - Thank you \n ఎలా ఉన్నావు? (ela unnava?) - How are you? \n మీరు ఎక్కడ నున్నారు? (meeru ekkada unnaru?) - Where are you? \n కావలసినది ఏమిటి? (kaavalasinadi emiti?) - What do you want?",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
