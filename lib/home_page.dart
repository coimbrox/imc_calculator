import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var altura = 0.0;
  var peso = 0.0;
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          TextField(
            onChanged: (value) => altura = double.tryParse(value) ?? 0,
            decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Altura'),
          ),
          const SizedBox(height: 10),
          TextField(
            onChanged: (value) => peso = double.tryParse(value) ?? 0,
            decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Peso'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                final imcValue = peso / math.pow(altura, 2);
                if (imcValue < 18.5) {
                  result = 'Seu IMC é $imcValue. Você está abaixo do peso.';
                } else if (imcValue >= 18.5 && imcValue < 24.9) {
                  result = 'Seu IMC é $imcValue. Você está no peso ideal.';
                } else if (imcValue >= 24.9 && imcValue < 29.9) {
                  result = 'Seu IMC é $imcValue. Você está com sobrepeso .';
                } else {
                  result = 'Seu IMC é $imcValue. Você está com obesidade .';
                }

                setState(() {});
              },
              child: const Text('Calcular')),
          const SizedBox(height: 10),
          Text(result),
        ],
      ),
    );
  }
}
