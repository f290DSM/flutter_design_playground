import 'package:flutter/material.dart';

class InputFormPage extends StatefulWidget {
  const InputFormPage({super.key});

  @override
  State<InputFormPage> createState() => _InputFormPageState();
}

class _InputFormPageState extends State<InputFormPage> {

  final textController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Forms')),
      body: ListView(
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
          ElevatedButton(onPressed: () {
            print('Button pressed: ${textController.text}');
          }, child: Text('SUBMIT'))
        ],
      ),
    );
  }
}