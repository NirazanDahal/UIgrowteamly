import 'package:flutter/material.dart';
import 'package:growteamly/intro_page3.dart';
import 'package:growteamly/login_using_password.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                              builder: (context) => const IntroPage3(),
                            ));
                      });
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black)
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            const Text("Let's you in",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
            const SizedBox(height: 100),
            MaterialButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/facebook.png",
                      scale: 20,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Continue with Facebook",
                    )
                  ],
                )),
            const SizedBox(height: 5),
            MaterialButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/google.png",
                    scale: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Continue with Google")
                ],
              ),
            ),
            const SizedBox(height: 5),
            MaterialButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/apple.png",
                    scale: 60,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Continue with Apple",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            const Divider(),
            const Text(
              "Or",
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SigninPassword(),
                      ));
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
                    "Sign in with password",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
