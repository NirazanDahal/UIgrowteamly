import 'package:flutter/material.dart';
import 'package:growteamly/intro_page2.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),

            const Icon(
              Icons.calendar_month,
              size: 200,
              color: Colors.purple,
            ),
            // Image.network(
            //     "https://cdn.dribbble.com/users/7056161/screenshots/15191023/media/c34bf1e1d119bbf7b1fe219147019335.jpg?compress=1&resize=400x300&vertical=top"),
            const SizedBox(height: 80),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Organize Your tasks & Projects Easily",
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
                        builder: (context) => const IntroPage2(),
                      ),
                    );
                  });
                });
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 67,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.blue),
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
