import 'package:flutter/material.dart';
import 'menu.dart';

class Questions extends StatelessWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('OPJ Expert'),
        ),
        drawer: const Menu(),
        body: Align(alignment: Alignment.bottomCenter, child: ElevatedButton(onPressed: () {}, child: const Text('Sample Button'))));
  }
}
