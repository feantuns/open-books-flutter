import 'package:flutter/material.dart';
import 'package:flutter_app_fiap/screens/login/ui/login_screen.dart';
import 'package:flutter_app_fiap/widgets/styled_text_field.dart';

class RegisterScreen extends StatelessWidget {
  static const String id = '/register_screen';

  RegisterScreen({
    super.key,
  });

  var inputtedEmail = '';
  var inputtedPassword = '';
  var inputtedConfirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Cadastre-se',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            const Text('Já tem uma conta?',
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                            TextButton(
                                onPressed: () => Navigator.pushReplacementNamed(
                                    context, LoginScreen.id),
                                child: const Text('Entrar'))
                          ],
                        )),
                    const SizedBox(height: 40),
                    FilledTextField(
                      label: 'Email',
                      textInputType: TextInputType.emailAddress,
                      onTextChange: (text) => inputtedEmail = text,
                    ),
                    const SizedBox(height: 16),
                    FilledTextField(
                      label: 'Senha',
                      obscureText: true,
                      onTextChange: (text) => inputtedPassword = text,
                    ),
                    const SizedBox(height: 16),
                    FilledTextField(
                      label: 'Confirmar senha',
                      obscureText: true,
                      onTextChange: (text) => inputtedConfirmPassword = text,
                    ),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () => print("oi"),
                      child: Text('Criar conta'),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            const Size.fromHeight(50)),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
