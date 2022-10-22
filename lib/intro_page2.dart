import 'package:flutter/material.dart';
import 'package:growteamly/intro_page1.dart';
import 'package:growteamly/intro_page3.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
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
                          builder: (context) => const IntroPage1(),
                        ));
                  });
                },
                icon: const Icon(Icons.arrow_back),
                color: Colors.black)
          ],
        ),
        const SizedBox(height: 50),
        const Icon(
          Icons.message_outlined,
          color: Colors.lightGreen,
          size: 200,
        ),
        // Image.network(
        // "https://img.freepik.com/premium-vector/button-3d-icon-message-loading_612544-151.jpg?w=2000"),
        const SizedBox(height: 80),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Always Connect with Team Anytime Anywhere",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Text("Lorem Ipsum"),
        const SizedBox(
          height: 175,
        ),
        InkWell(
          onTap: () {
            setState(() {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IntroPage3(),
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
