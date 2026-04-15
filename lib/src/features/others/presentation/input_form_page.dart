import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/features/others/presentation/widgets/forum_card_widget.dart';

class InputFormPage extends StatefulWidget {
  const InputFormPage({super.key});

  @override
  State<InputFormPage> createState() => _InputFormPageState();
}

class _InputFormPageState extends State<InputFormPage> {
  final textController = TextEditingController();
  bool switchValue = false;
  double sliderValue = 0;
  String selectedLanguage = 'Java';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Forms')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            Text('Botões', style: Theme.of(context).textTheme.headlineMedium),
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
            UnconstrainedBox(
              child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            ),
            UnconstrainedBox(
              child: IconButton.filled(onPressed: () {}, icon: Icon(Icons.add)),
            ),
            UnconstrainedBox(
              child: IconButton.filledTonal(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ),
            UnconstrainedBox(
              child: IconButton.outlined(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ),
            Text('Slider', style: Theme.of(context).textTheme.headlineMedium),
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
            Text(
              'Seleção Única',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SwitchListTile(
              title: Text('Switch List Tile'),
              secondary: Icon(Icons.info),
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            ...['Santos', 'São Paulo', 'Palmeiras'].map((e) {
              return Radio(value: e, groupValue: 'times', onChanged: (value) {});
            }),
          ],
        ),
      ),
    );
  }
}
