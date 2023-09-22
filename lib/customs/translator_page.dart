import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TranslationPage extends StatefulWidget {
  @override
  _TranslationPageState createState() => _TranslationPageState();
}

class _TranslationPageState extends State<TranslationPage> {
  final translator = GoogleTranslator();

  String _inputText = '';
  String _translatedText = '';

  void _translate() async {
    if (_inputText.isEmpty) return;

    Translation translation = await translator.translate(_inputText, to: 'es');
    setState(() {
      _translatedText = translation.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translation Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              // style: TextStyle(
              //   color: Colors.green,
              // ),
              decoration: InputDecoration(
                labelText: 'Enter text to translate',
              ),
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _translate,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('Translate'),
            ),
            SizedBox(height: 16.0),
            Text(
              _translatedText,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
