import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage(this.changeCurrentPage, {super.key});

  final Function(String pageName) changeCurrentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 6, 52, 10),
            Color.fromARGB(255, 40, 116, 40),
            Color.fromRGBO(0, 0, 0, 1),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/tree-of-life.png',
              width: 200,
            ),
            const SizedBox(height: 60),
            const Text(
              'Let\'s cook!',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: changeCurrentPage('question_page'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Color.fromRGBO(255, 255, 255, 1),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                side:
                    const BorderSide(color: Color.fromARGB(35, 255, 255, 255)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              ),
              icon: const Text(
                'Get Started',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              label: const Icon(
                Icons.food_bank,
                color: Colors.white,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
