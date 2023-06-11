import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(login(
    name: '',
  ));
}

// ignore: camel_case_types
class login extends StatelessWidget {
  String name;
  login({
    required this.name,
  });
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wellcome:$name'),
      ),
      body: const MyHomePage(),
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

  final TextEditingController _name = TextEditingController();

  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _id = TextEditingController();
  final TextEditingController _age = TextEditingController();
  final TextEditingController _sex = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  controller: _name,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      border: OutlineInputBorder(),
                      labelText: 'name',
                      hintText: 'Enter name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Name';
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
                  controller: _email,
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
                  controller: _id,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      border: OutlineInputBorder(),
                      labelText: 'id',
                      hintText: 'Enter  id'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your id';
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
                  controller: _age,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      border: OutlineInputBorder(),
                      labelText: 'age',
                      hintText: 'Enter age'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Your age';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _phone,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      border: OutlineInputBorder(),
                      labelText: 'phone',
                      hintText: 'Enter  phone'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone';
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
                  controller: _sex,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      border: OutlineInputBorder(),
                      labelText: 'sex',
                      hintText: 'Enter sex'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Your sex';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 5,
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
                            builder: (context) => home(
                                  name: _name.text,
                                )),
                      );
                    }
                  },
                  child: const Text('registor'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
