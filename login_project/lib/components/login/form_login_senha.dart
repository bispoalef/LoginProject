import 'package:flutter/material.dart';

import '../../controllers/login_controller.dart';
import '../../widgets/textfield_login.dart';

class LoginSenha extends StatelessWidget {
  const LoginSenha({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: Colors.blue.shade100,
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextFieldLogin(label: 'Login', onChanged: controller.setLogin),
            TextFieldLogin(
              label: 'Senha',
              onChanged: controller.setSenha,
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
