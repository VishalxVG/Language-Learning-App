import 'package:flutter/material.dart';

class GrammerPage extends StatelessWidget {
  const GrammerPage({super.key});

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
        child: Column(
          children: const [
            Text(
              "Subjunctive mood:\nThe subjunctive mood is used to express doubt, uncertainty, or hypothetical situations. For example:",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "1)Espero que venga pronto. (I hope he/she comes soon.)\n2)Es importante que hables con ella. (It's important that you talk to her.)\n3)Si tuviera más tiempo, viajaría más. (If I had more time, I would travel more.)",
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Conditional tense: \nThe conditional tense is used to express hypothetical or future actions that are dependent on a condition. For example:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "1)Me gustaría ir al cine esta noche. (I would like to go to the movies tonight.)\n2)Si tuviera dinero, compraría un coche. (If I had money, I would buy a car.)\n3)Si pudiera, me iría de vacaciones. (If I could, I would go on vacation.)",
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Preterite perfect tense:\nThe preterite perfect tense is used to talk about actions that were completed in the recent past. For example:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "1)Ya he terminado mi trabajo. (I have already finished my work.)\n2)¿Has visto la última película de Tarantino? (Have you seen Tarantino's latest movie?)\n3)Hemos estado en Madrid por una semana. (We have been in Madrid for a week.)",
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
