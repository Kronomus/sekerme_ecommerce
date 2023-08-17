import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:sekerme_ecommerce/app/presentation/widgets/wigdets_common_links.dart';

class ForgotView extends StatelessWidget {
  static const String name = 'forgot_view';

  final _email = TextEditingController();

  ForgotView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/MyMarca.svg',
                    colorFilter:  ColorFilter.mode(
                        Theme.of(context).colorScheme.primary, BlendMode.srcIn

                    ),
                    alignment: Alignment.topCenter,
                    height: 300,
                  ),
                  //const SizedBox(height: 16.0),
                  Text('Forget Password',style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 16.0),
                  Text('Enter the email associated with your account',style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 16.0),
                  MyTextForm(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      textInputType: TextInputType.emailAddress,
                      obscureText: false,
                      suffixIcon: false,
                      controller: _email,
                  ),
                  const SizedBox(height: 20.0),
                  MyButtonForm(
                    text: 'Reset Password',
                    onTap: (){},
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}