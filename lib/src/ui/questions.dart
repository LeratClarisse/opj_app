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
        body: buildBottom(context));
  }

  /// Bottom side rendering (buttons)
  Widget buildBottom(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      fixedSize: const Size(200, 50),
      padding: const EdgeInsets.all(20),
    );

    return Align(
        alignment: Alignment.bottomCenter,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ElevatedButton(style: style, onPressed: () {}, child: const Text('Réponse')),
          const SizedBox(height: 30),
          Row(children: <Widget>[
            Expanded(child: IconButton(icon: const Icon(Icons.arrow_left), onPressed: () {})),
            Expanded(flex: 2, child: IconButton(icon: const Icon(Icons.document_scanner_outlined), onPressed: () {})),
            Expanded(child: IconButton(icon: const Icon(Icons.arrow_right), onPressed: () {}))
          ]),
          const SizedBox(height: 30),
        ]));
  }
}
