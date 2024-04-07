import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final Function() changeCurrentPage;

  const WelcomePage(this.changeCurrentPage, {super.key});

  @override
  Widget build(BuildContext context) {
    // AppBar appBar = AppBar(
    //   title: const Text(
    //     'Welcome',
    //     style: TextStyle(
    //       color: Color.fromARGB(255, 255, 255, 255),
    //       fontSize: 24,
    //     ),
    //   ),
    //   backgroundColor: Colors.transparent,
    //   flexibleSpace: Container(
    //     decoration: const BoxDecoration(
    //       gradient: LinearGradient(
    //         colors: [
    //           Color.fromARGB(255, 6, 52, 10),
    //           Color.fromARGB(255, 40, 116, 40),
    //           Color.fromRGBO(0, 0, 0, 1),
    //         ],
    //         begin: Alignment.bottomLeft,
    //         end: Alignment.topRight,
    //       ),
    //     ),
    //   ),
    // );
    return Scaffold(
      // appBar: appBar,
      body: Container(
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
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              'assets/images/tree-of-life.png',
              width: 200,
            ),
            const SizedBox(height: 60),
            const Text(
              'Let\'s cook!',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 32,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
                onPressed: changeCurrentPage,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Color.fromRGBO(255, 255, 255, 1),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  side: const BorderSide(
                      color: Color.fromARGB(35, 255, 255, 255)),
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
                label: Image.asset('assets/images/cooking.png', width: 32)),
          ]),
        ),
      ),
    );
  }
}
