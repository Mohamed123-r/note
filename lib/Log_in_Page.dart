import 'package:flutter/material.dart';
import 'package:note/sign_up.dart';

import 'home_page.dart';

// ignore: camel_case_types
class Log_in_Page extends StatefulWidget {
  const Log_in_Page({super.key});

  @override
  State<Log_in_Page> createState() => _Log_in_PageState();
}

// ignore: camel_case_types
class _Log_in_PageState extends State<Log_in_Page> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/images.png'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    labelText: 'username',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  obscureText: showPassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword == true
                              ? showPassword = false
                              : showPassword = true;
                        });
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                    labelText: 'password',
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Text(
                      'If tou haven\'t account ',
                    ),
                    TextButton(
                      onPressed: () {setState(() {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (com) {
                              return const sign_up();
                            },
                          ),
                        );
                      });},
                      child: const Text(
                        'Click Here',
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 200,
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  setState(() {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (com) {
                          return const home_page();
                        },
                      ),
                    );
                  });

                },
                child: const Text(
                  'Log in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
