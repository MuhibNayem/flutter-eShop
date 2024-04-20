import 'package:e_shop/common/styles/spacing_style.dart';
import 'package:e_shop/common/widgets/login_signup/form_divider.dart';
import 'package:e_shop/common/widgets/login_signup/social_button.dart';
import 'package:e_shop/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_shop/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_shop/utils/constants/sizes.dart';
import 'package:e_shop/utils/constants/text_string.dart';
import 'package:e_shop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo, title, sub-title
               AppLoginHeader(dark: dark),

              /// Form
              const LoginForm(),

              /// Divider
              AppFormDivider(dividerText: AppTexts.orSignInWith.capitalize!),
              const SizedBox(height: AppSizes.spaceBtwSections),

              ///  Footer
              const AppSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


