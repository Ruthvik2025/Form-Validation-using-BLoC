import 'package:bloc_app/sign_in/BLoC/sign_in_bloc.dart';
import 'package:bloc_app/sign_in/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Welocome extends StatelessWidget {
  const Welocome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text("Example"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BlocProvider(
                            create: (context) => SignInBloc(),
                            child: const SignUp(),
                          )),
                );
              },
              child: const Text("Sign in with EMail"),
            ),
          ],
        ),
      ),
    );
  }
}
