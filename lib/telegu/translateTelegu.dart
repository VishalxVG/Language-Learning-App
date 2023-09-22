import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TeleguTranslator extends StatefulWidget {
  const TeleguTranslator({super.key});

  @override
  State<TeleguTranslator> createState() => _TeleguTranslatorState();
}

class _TeleguTranslatorState extends State<TeleguTranslator> {
  final translator = GoogleTranslator();

  String _inputText = '';
  String _translatedText = '';

  void _translate() async {
    if (_inputText.isEmpty) return;

    Translation translation = await translator.translate(_inputText, to: 'te');
    setState(() {
      _translatedText = translation.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Enter text to translate',
                  iconColor: Colors.green),
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _translate,
              child: const Text('Translate'),
            ),
            const SizedBox(height: 16.0),
            Text(
              _translatedText,
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
