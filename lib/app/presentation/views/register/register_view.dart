import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerce/app/presentation/views/register/widgets/my_check_box.dart';
import 'package:sekerme_ecommerce/app/presentation/views/register/widgets/my_date_picker.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/my_button_form.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/my_text_form.dart';


class RegisterView extends StatelessWidget {

  static const String name = 'register_view';

  final _firstName        = TextEditingController();
  final _lastName         = TextEditingController();
  final _email            = TextEditingController();
  final _password         = TextEditingController();
  final _confirmPassword  = TextEditingController();
  final _datePecker       = TextEditingController();
  final _checkBox         = false;

  RegisterView({
    super.key
  });

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
                    onChanged: (bool? value) {},
                  ),
                  const SizedBox(height: 16.0),
                  MyButtonForm(
                      text: 'Sing in',
                      onTap: (){
                    }),
                ],
              ),
            ),
          )
      ),
    );
  }
}
