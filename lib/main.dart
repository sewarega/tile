import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('wellcome'),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _username,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      border: OutlineInputBorder(),
                      labelText: 'username',
                      hintText: 'Enter username'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your userName';
                    }
                      bool nameValidator =
                          RegExp(r"^[a-zA-Z ]+$").hasMatch(value);
                      if (!nameValidator) {
                        return "please enter a valied name";
                      }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      border: OutlineInputBorder(),
                      labelText: 'email',
                      hintText: 'Enter your email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                      bool emailValied = RegExp(
                              r"^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*(\.[a-zA-Z]{2,})$")
                          .hasMatch(value);
                      if (!emailValied) {
                        return "enter valied Email!";
                      }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      border: OutlineInputBorder(),
                      labelText: 'password',
                      hintText: 'Enter  password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Forgot password?'),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => login(
                                  name: _username.text,
                                )),
                      );
                    }
                  },
                  child: const Text('login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
