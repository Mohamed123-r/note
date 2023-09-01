import 'package:flutter/material.dart';

import 'package:note/home_page.dart';

import 'Log_in_Page.dart';

// ignore: camel_case_types
class sign_up extends StatefulWidget {
  const sign_up({super.key});

  @override
  State<sign_up> createState() => _sign_upState();
}

// ignore: camel_case_types
class _sign_upState extends State<sign_up> {


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
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.alternate_email,
                    ),
                    labelText: 'email',
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
                      'If you have account ',
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (com) {
                                return const Log_in_Page();
                              },
                            ),
                          );
                        });
                      },
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
