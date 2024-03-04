import 'package:bloc_app/sign_in/BLoC/sign_in_bloc.dart';
import 'package:bloc_app/sign_in/BLoC/sign_in_event.dart';
import 'package:bloc_app/sign_in/BLoC/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in with Email"),
      ),
      body: Column(
        children: [
          BlocBuilder<SignInBloc, SignInState>(
            builder: (context, state) {
              if (state is SignInErrorState) {
                return Text(
                  state.errormessage,
                  style: const TextStyle(color: Colors.red),
                );
              } else {
                return Container();
              }
            },
          ),
          const SizedBox(
            height: 12,
          ),
          TextField(
            controller: emailcontroller,
            onChanged: (value) {
              BlocProvider.of<SignInBloc>(context).add(SignInTextChangedEvent(
                  emailvalue: emailcontroller.text,
                  passwordvalue: passwordcontroller.text));
            },
            decoration: const InputDecoration(hintText: "Email Address"),
          ),
          const SizedBox(
            height: 12,
          ),
          TextField(
            controller: passwordcontroller,
            onChanged: (value) {
              BlocProvider.of<SignInBloc>(context).add(SignInTextChangedEvent(
                  emailvalue: emailcontroller.text,
                  passwordvalue: passwordcontroller.text));
            },
            decoration: const InputDecoration(hintText: " Password"),
          ),
          const SizedBox(
            height: 12,
          ),
          BlocBuilder<SignInBloc, SignInState>(
            builder: (context, state) {
              return ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    (state is SignInValidState ? Colors.blue : Colors.grey),
                  ),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(color: Colors.white),
                  ),
                ),
                onPressed: () {},
                child: const Text("Sign UP"),
              );
            },
          )
        ],
      ),
    );
  }
}
