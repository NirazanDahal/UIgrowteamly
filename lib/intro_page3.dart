import 'package:flutter/material.dart';
import 'package:growteamly/intro_page2.dart';
import 'package:growteamly/signin_screen.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const IntroPage2(),
                        ));
                  });
                },
                icon: const Icon(Icons.arrow_back),
                color: Colors.black)
          ],
        ),
        const SizedBox(height: 50),
        const Icon(
          Icons.pie_chart,
          size: 200,
          color: Colors.green,
        ),
        const SizedBox(height: 80),
        const Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Everything You Can Do in the App",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Lorem Ipsum"),
          ],
        ),
        const SizedBox(
          height: 190,
        ),
        InkWell(
          onTap: () {
            setState(() {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SigninScreen(),
                    ));
              });
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: 67,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35), color: Colors.blue),
            child: const Center(
                child: Text(
              "Next",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ]),
    );
  }
}
