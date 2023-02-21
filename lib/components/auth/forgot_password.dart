import 'package:flutter/material.dart';
import 'package:portefeuille/pages/auth/forgot_password_page.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: InkWell(
          onTap: () =>
              Navigator.of(context).pushNamed(ForgotPasswordPage.routeName),
          child: const SizedBox(
            child: SizedBox(
              width: 130,
              height: 40,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Mot de passe oublié?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
