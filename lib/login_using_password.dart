import 'package:flutter/material.dart';
import 'package:growteamly/signin_screen.dart';

class SigninPassword extends StatefulWidget {
  const SigninPassword({super.key});

  @override
  State<SigninPassword> createState() => _SigninPasswordState();
}

class _SigninPasswordState extends State<SigninPassword> {
  bool _isObscure = true;
  bool _isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                            builder: (context) => const SigninScreen(),
                          ));
                    });
                  },
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black)
            ],
          ),
          const SizedBox(height: 50),
          const Text("Login to your Account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 8),
            child: TextFormField(
              enableInteractiveSelection: true,
              obscureText: _isObscure,
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure ? _isObscure = false : _isObscure = true;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye_outlined))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _isCheck;
                      _isCheck = !_isCheck;
                    });
                  },
                  icon: _isCheck
                      ? const Icon(Icons.check_box)
                      : const Icon(Icons.check_box_outline_blank_rounded)),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Remember me",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SigninScreen(),
                    ));
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
                  "Sign in",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Forgot password ?",
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Or continue with"),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SigninScreen(),
                        ));
                  });
                },
                icon: Image.asset(
                  "assets/images/facebook.png",
                  scale: 16,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SigninScreen(),
                        ));
                  });
                },
                icon: Image.asset(
                  "assets/images/google.png",
                  scale: 16,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SigninScreen(),
                        ));
                  });
                },
                icon: Image.asset(
                  "assets/images/apple.png",
                  scale: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
