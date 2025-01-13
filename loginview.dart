import 'package:flutter/material.dart';
import 'package:learning_flutter/home_view.dart';
import 'package:learning_flutter/signupview.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<Loginview> {
  var showtext = false;

  bool chang = false;
  // TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(''),
        backgroundColor: Colors.blue,
        title: Text('Log In View'),
        centerTitle: true,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: TextFormField(
            decoration: InputDecoration(
              prefix: Icon(Icons.email_outlined),
              // icon: Icon(Icons.email),
              label: Text('Email'),
              hintText: 'Please enter your email here',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
            // obscureText: true,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: InputDecoration(
            prefix: Icon(Icons.password_rounded),
            // icon: Icon(Icons.email),
            labelText: 'password',
            hintText: 'Please enter your password here',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
          obscureText: true,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return HomeView();
                },
              ));
            },
            child: Text('Log In')),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an Account"),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpView();
                  }));
                },
                child: Text('Create Account'))
          ],
        )
      ]),
    );
  }
}