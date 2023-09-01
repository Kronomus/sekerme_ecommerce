import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerce/app/presentation/views/register/widgets/my_check_box.dart';
import 'package:sekerme_ecommerce/app/presentation/views/register/widgets/my_date_picker.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/my_button_form.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/my_text_form.dart';

import '../../../config/security/encript.dart';


class RegisterView extends StatefulWidget {

  static const String name = 'register_view';


  const RegisterView({
    super.key
  });

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _firstName        = TextEditingController();
  final _lastName         = TextEditingController();
  final _email            = TextEditingController();
  final _password         = TextEditingController();
  final _confirmPassword  = TextEditingController();
  final _datePecker       = TextEditingController();

  bool _checkBox         = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //Logo
                  SvgPicture.asset('assets/images/MyMarca.svg',
                    colorFilter:  ColorFilter.mode(
                        Theme.of(context).colorScheme.primary, BlendMode.srcIn
                    ),
                    alignment: Alignment.topCenter,
                    height: 180,
                  ),
                  Text('Create Account',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  MyTextForm(
                      labelText: 'First Name',
                      hintText: 'First Name',
                      textInputType: TextInputType.text,
                      obscureText: false,
                      suffixIcon: true,
                      controller: _firstName
                  ),
                  const SizedBox(height: 16.0),
                  MyTextForm(
                      labelText: 'Last Name',
                      hintText: 'Last Name',
                      textInputType: TextInputType.text,
                      obscureText: false,
                      suffixIcon: true,
                      controller: _lastName
                  ),
                  const SizedBox(height: 16.0),
                  MyTextForm(
                      labelText: 'Email',
                      hintText: 'Email',
                      textInputType: TextInputType.emailAddress,
                      obscureText: false,
                      suffixIcon: true,
                      controller: _email,
                  ),
                  const SizedBox(height: 16.0),
                  MyTextForm(
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                      suffixIcon: true,
                      controller: _password
                  ),
                  const SizedBox(height: 16.0),
                  MyTextForm(
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                      suffixIcon: true,
                      controller: _confirmPassword
                  ),
                  const SizedBox(height: 16.0),
                  MyDatePicker(
                    controller: _datePecker,
                  ),
                  const SizedBox(height: 16.0),
                  MyCheckBox(
                    value: _checkBox,
                    onChanged: (bool? value) {
                      setState(() {
                        _checkBox = value!;
                      });
                    },
                  ),
                  const SizedBox(height: 16.0),
                  MyButtonForm(
                      text: 'Sing in',
                      onTap: (){
                        if(_checkBox==false){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text('You must accept the terms and conditions'),
                                backgroundColor: Theme.of(context).colorScheme.error,
                                duration: const Duration(seconds: 2),

                              )
                          );
                        }else{
                          print(encript(_password.text));
                          print(encript(_confirmPassword.text));
                          if(_password.text==_confirmPassword.text){
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text('You are registered'),
                                  backgroundColor: Theme.of(context).colorScheme.primary,
                                  duration: const Duration(seconds: 2),

                                )
                            );

                          }




                        }

                    }),
                ],
              ),
            ),
          )
      ),
    );
  }
}
