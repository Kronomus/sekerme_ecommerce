
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mamitas/app/presentation/views/login/login_view.dart';
import 'package:mamitas/app/presentation/views/login/views/login_divider.dart';
import 'package:mamitas/app/presentation/views/register/register_view.dart';
import 'package:mamitas/app/presentation/views/register/widgets/my_checkbox_box.dart';
import 'package:mamitas/app/presentation/widgets/links_common_widgets.dart';

import '../../widgets/form_text_field.dart';


class registerView extends StatefulWidget {


  static const String name = 'registerView';


  registerView({super.key});

  @override
  State<registerView> createState() => _registerViewState();
}

class _registerViewState extends State<registerView> {
  final _email = TextEditingController();

  final _password = TextEditingController();

  final _nombre = TextEditingController();

  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Logo


               //   SvgPicture.asset(
                 //   'assets/images/MyMarca.svg',
                  //  colorFilter: ColorFilter.mode(
                  //      Theme.of(context).colorScheme.secondary, BlendMode.srcIn),
                  //  alignment: Alignment.topCenter,
                 //   width: 180,
                //  ),
                  Text(
                    "Crear cuenta",
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
                    controller: _email,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyFormTextField(
                    labelText: "Nombre ",
                    hintText: "Nombre Completo ",
                    textInputType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _nombre,
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
                    controller: _password,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Need help with a password?',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  MyCheckBox(
                    value: _checkbox,
                    onChanged: (bool? value){
                      setState(() {
                        _checkbox = value!;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  MyButtonForm(text: "Sing up", onTab: () {
                    if(_checkbox==false){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Pepito Perez'),
                              backgroundColor: Theme.of(context).colorScheme.error,
                              duration: const Duration(seconds: 2),
                          )
                      );
                    }else{
                    print("Email Adress: ${_email.text}");
                    print("Password: ${_password.text}");
                    print("Nombre: ${_nombre.text}");
                   };}, ),
                  const SizedBox(height: 12),
                  const loginDivider2(),
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
                          "Already have an acount?",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        TextButton(
                          onPressed: () {

                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>  LoginView())
                            );
                          },
                          child: Text(
                            "Log in",
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