import 'package:bloc_app/sign_in/BLoC/sign_in_event.dart';
import 'package:bloc_app/sign_in/BLoC/sign_in_state.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInIntialState()) {
    on<SignInTextChangedEvent>((event, emit) {
      if (event.emailvalue == '' ||
          EmailValidator.validate(event.emailvalue.toString()) == false) {
        emit(SignInErrorState(
            errormessage: "Please Enter a valid email address"));
      } else if (event.passwordvalue!.length <= 8) {
        emit(SignInErrorState(errormessage: "Please Enter A valid password"));
      } else {
        emit(SignInValidState());
      }
    });
    on<SignInSubmittedEvent>((event, emit) {
      emit(SignInLoadingState());
    });
  }
}
