import 'package:flutter/material.dart';
import 'package:learning_flutter/home_view.dart';
import 'package:learning_flutter/loginview.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  var showtext = false;

  bool chang = false;
  // TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        backgroundColor: Colors.blue,
        title: Text('Sign up Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
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
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
            obscureText: true,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Error'),
                      content: Text('Empty? Enter your credentials'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Ok'))
                      ],
                    );
                  },
                );

                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return HomeView();
                  },
                ));
              },
              child: Text('Sign Up')),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an Account?'),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Loginview();
                        },
                      ));
                    },
                    child: Text('Sign In here'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
