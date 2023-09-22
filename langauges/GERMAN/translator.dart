import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class GermanTranslatorPage extends StatefulWidget {
  const GermanTranslatorPage({super.key});

  @override
  State<GermanTranslatorPage> createState() => _GermanTranslatorPageState();
}

class _GermanTranslatorPageState extends State<GermanTranslatorPage> {
  final translator = GoogleTranslator();

  String _inputText = '';
  String _translatedText = '';

  void _translate() async {
    if (_inputText.isEmpty) return;

    Translation translation = await translator.translate(_inputText, to: 'de');
    setState(() {
      _translatedText = translation.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Translation Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter text to translate',
              ),
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
