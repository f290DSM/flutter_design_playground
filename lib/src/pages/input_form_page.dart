import 'package:flutter/material.dart';

class InputFormPage extends StatefulWidget {
  const InputFormPage({super.key});

  @override
  State<InputFormPage> createState() => _InputFormPageState();
}

class _InputFormPageState extends State<InputFormPage> {
  final textController = TextEditingController();
  bool switchValue = false;
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Forms')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                labelText: 'Digite algo',
                hintText: 'Digite algo',
                border: OutlineInputBorder(),
                filled: true,
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                print('onChanged: value: $value');
              },
              onEditingComplete: () {
                print('onEditingComplete');
              },
              onSubmitted: (value) {
                print('onSubmitted: value: $value');
              },
            ),
            FilledButton(
              onPressed: () {
                print('Button pressed: ${textController.text}');
              },
              child: Text('SUBMIT'),
            ),
            FilledButton.tonal(
              onPressed: () {},
              child: Text('FILLED TONAL BUTTON'),
            ),
            FilledButton.tonalIcon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('FILLED TONAL ICON BUTTON'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('ELEVATED BUTTON')),
            TextButton(onPressed: () {}, child: Text('TEXT BUTTON')),
            OutlinedButton(onPressed: () {}, child: Text('OUTLINED BUTTON')),
            Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            Slider(
              divisions: 10,
              label: 'Valor Slider: ${sliderValue.toStringAsFixed(1)}',
              min: 0,
              max: 10,
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
