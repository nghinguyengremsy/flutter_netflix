import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:reactive_button/reactive_button.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/navigator/navigator.dart';
import '../../../../core/routes/names.dart';
import '../../../../core/services/services.dart';
import '../../data/models/signup_req_params.dart';
import '../../domain/usecases/signup_usecase.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 100, right: 16, left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signupText(),
            const SizedBox(
              height: 30,
            ),
            _emailField(),
            const SizedBox(
              height: 20,
            ),
            _passwordField(),
            const SizedBox(
              height: 60,
            ),
            _signupButton(context),
            const SizedBox(
              height: 20,
            ),
            _signinText(context)
          ],
        ),
      ),
    );
  }

  Widget _signupText() {
    return const Text(
      'Sign Up',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    );
  }

  Widget _emailField() {
    return TextField(
      controller: _emailCon,
      decoration: const InputDecoration(hintText: 'Email'),
    );
  }

  Widget _passwordField() {
    return TextField(
      controller: _passwordCon,
      decoration: const InputDecoration(hintText: 'Password'),
    );
  }

  Widget _signupButton(BuildContext context) {
    return ReactiveButton(
        title: 'Sign Up',
        activeColor: AppColors.primary,
        onPressed: () async => GetIt.I<SignupUsecase>().call(
              SignupReqParams(
                  email: _emailCon.text, password: _passwordCon.text),
            ),

        onSuccess: () {
          AppNavigator.pushNamedAsRoot(context, RouteName.home);
        },
        onFailure: (error) {
          DisplayMessage.errorMessage(error, context);
        });
  }

  Widget _signinText(BuildContext context) {
    return Text.rich(TextSpan(children: [
      const TextSpan(text: "Do you have account?"),
      TextSpan(
          text: ' Sign In',
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              AppNavigator.pushNamed(context, RouteName.signin);
            })
    ]));
  }
}
