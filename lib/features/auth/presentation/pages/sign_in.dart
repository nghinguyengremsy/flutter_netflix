import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reactive_button/reactive_button.dart';

import '../../../../core/navigator/navigator.dart';
import '../../../../core/routes/names.dart';
import '../../../../core/services/services.dart';
import '../../../../core/theme/theme.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

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
            _signinText(),
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
            _signinButton(context),
            const SizedBox(
              height: 20,
            ),
            _signupText(context)
          ],
        ),
      ),
    );
  }

  Widget _signinText() {
    return const Text(
      'Sign In',
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

  Widget _signinButton(BuildContext context) {
    return ReactiveButton(
      title: 'Sign In',
      activeColor: AppColors.primary,
      // onPressed: () async => sl<SigninUseCase>().call(
      //     params: SigninReqParams(
      //         email: _emailCon.text, password: _passwordCon.text)),
      onSuccess: () {
        AppNavigator.pushNamedAndRemoveUntil(context, RouteName.home);
      },
      onFailure: (error) {
        DisplayMessage.errorMessage(error, context);
      },
      onPressed: () async {
        return true;
      },
    );
  }

  Widget _signupText(BuildContext context) {
    return Text.rich(TextSpan(children: [
      const TextSpan(text: "Don't you have account?"),
      TextSpan(
          text: ' Sign Up',
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              AppNavigator.pushNamed(context, RouteName.signup);
            })
    ]));
  }
}
