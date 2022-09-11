import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:authentication/appbar/empty_app_bar.dart';
import 'package:authentication/logo/logo1.dart';
import 'package:authentication/forms/text_fields.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      resizeToAvoidBottomInset: false,
      body: Scrollbar(
        thumbVisibility: true,
        radius: const Radius.circular(180),
        thickness: 7,
        child: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 10),
                        const Logo1(),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: 350,
                          height: 450,
                          child: Card(
                            elevation: 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const SizedBox(height: 15),
                                Text(
                                  'Sign up',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    margin: const EdgeInsets.all(10),
                                    padding: const EdgeInsets.only(left: 10, right: 10),
                                    child: Form(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          const Text('Name:'),
                                          const SizedBox(height: 5),
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: Container(
                                                  margin: const EdgeInsets.only(right: 7),
                                                  child: const DefaultText(
                                                    icon: Icons.person,
                                                    placeholder: 'First',
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  margin: const EdgeInsets.only(left: 7),
                                                  child: const DefaultText(
                                                    icon: Icons.person,
                                                    placeholder: 'Last',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          const Text('Email:'),
                                          const SizedBox(height: 5),
                                          const DefaultText(
                                            icon: Icons.email,
                                            placeholder: 'Enter email',
                                          ),
                                          const SizedBox(height: 15),
                                          const Text('Password:'),
                                          const SizedBox(height: 5),
                                          const DefaultText(
                                            icon: Icons.lock,
                                            placeholder: 'Enter password',
                                            shouldObscureText: true,
                                          ),
                                          const SizedBox(height: 15),
                                          const Text('Confirm:'),
                                          const SizedBox(height: 5),
                                          const DefaultText(
                                            icon: Icons.lock,
                                            placeholder: 'Enter password',
                                            shouldObscureText: true,
                                          ),
                                          const SizedBox(height: 25),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: double.infinity,
                                              child: SizedBox(
                                                width: 150,
                                                child: ElevatedButton(
                                                  child: const Text('Register'),
                                                  onPressed: () => {},
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      const Text('Have an account? '),
                      GestureDetector(
                        child: Text(
                          'Sign in',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.blueAccent),
                        ),
                        onTap: () {
                          Feedback.forTap(context);
                          context.pop();
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
