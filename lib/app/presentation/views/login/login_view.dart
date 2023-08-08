import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mamitas/app/presentation/views/login/views/login_divider.dart';
import 'package:mamitas/app/presentation/views/register/register_view.dart';
import 'package:mamitas/app/presentation/widgets/links_common_widgets.dart';

import '../../widgets/form_text_field.dart';


class LoginView extends StatelessWidget {

  static const String name = 'login_view';

  final _emailAdress = TextEditingController();
  final _visiblePassword = TextEditingController();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Logo
              SvgPicture.asset(
                'assets/images/MyMarca.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                alignment: Alignment.topCenter,
                width: 180,
              ),
              Text(
                "Login",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyFormTextField(
                labelText: "Email",
                hintText: "Enter Your email",
                textInputType: TextInputType.emailAddress,
                obscureText: false,
                suffixIcon: false,
                controller: _emailAdress,
              ),
              const SizedBox(
                height: 20,
              ),
              MyFormTextField(
                labelText: "Password",
                hintText: "Password",
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
                suffixIcon: false,
                controller: _visiblePassword,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'forgot your password?',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              MyButtonForm(text: "Login", onTab: () {
                print("Email Adress: ${_emailAdress.text}");
                print("Password: ${_visiblePassword.text}");

              }),
              const SizedBox(height: 10),
              const loginDivider(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MySocialButton(
                    onTap: () {},
                    imagePath: "assets/icons/facebook.png",
                  ),
                  const SizedBox(width: 50),
                  MySocialButton(
                    onTap: () {},
                    imagePath: "assets/icons/google.png",
                  ),
                  const SizedBox(width: 50),
                  MySocialButton(
                    onTap: () {},
                    imagePath: "assets/icons/twitter.png",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an acount?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    TextButton(
                      onPressed: () {

                       Navigator.push(context,
                           MaterialPageRoute(
                           builder: (context) => const RegisterView())
                       );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              //Form
              //Button
              //TextButton
            ],
          ),
        ),
      )),
    );
  }
}
