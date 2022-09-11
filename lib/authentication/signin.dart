import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:authentication/forms/text_fields.dart';
import 'package:authentication/appbar/empty_app_bar.dart';
import 'package:authentication/logo/logo1.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Flexible(
              child: FractionallySizedBox(
                widthFactor: 1,
                heightFactor: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 10),
                    const Logo1(),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 350,
                      height: 330,
                      child: Card(
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(height: 15),
                            Text(
                              'Sign in',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(height: 10),
                            Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              width: double.infinity,
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Text('Email:'),
                                    const SizedBox(height: 5),
                                    const DefaultText(
                                      icon: Icons.email,
                                      placeholder: 'Enter email',
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    const Text('Password:'),
                                    const SizedBox(height: 5),
                                    const DefaultText(
                                      icon: Icons.lock,
                                      shouldObscureText: true,
                                      placeholder: 'Enter password',
                                    ),
                                    Container(
                                      width: double.infinity,
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                        onPressed: () => {},
                                        child: const Text('Forgot password?'),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        width: 150,
                                        child: ElevatedButton(
                                          onPressed: () => {},
                                          child: const Text('Login'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don\'t have an account?  ',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.blueAccent),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Feedback.forTap(context);
                            context.push('/signup');
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
