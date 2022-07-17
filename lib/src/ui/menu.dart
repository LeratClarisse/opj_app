import 'package:flutter/material.dart';
import 'package:opjapp/src/ui/choose_questions.dart';
import 'home.dart';
import 'courses.dart';
import 'course_sum_ups.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const SizedBox(
          height: 125,
          child: DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage("assets/icon/logo_opj.png"))),
            child: Text(''),
          ),
        ),
        ListTile(
          title: const Text('Accueil'),
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
        ),
        ListTile(
          title: const Text('Cours'),
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Courses()),
            );
          },
        ),
        ListTile(
          title: const Text('Récap'),
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const CourseSumUps()),
            );
          },
        ),
        ListTile(
          title: const Text('Questions'),
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const ChooseQuestion()),
            );
          },
        ),
      ],
    ));
  }
}
