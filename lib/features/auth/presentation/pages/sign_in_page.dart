import 'package:ecommerce/core/common/widgets/app_bar.dart';
import 'package:ecommerce/core/resources/app_navigator.dart';
import 'package:ecommerce/core/resources/app_strings.dart';
import 'package:ecommerce/core/common/widgets/custom_btn.dart';
import 'package:ecommerce/features/auth/presentation/pages/enter_password_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/sign_up_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(hideBack: true),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitleText(),
            const SizedBox(height: 15),
            _buildTextFormField(),
            const SizedBox(height: 20),
            _buildContinueButton(context),
            const SizedBox(height: 20),
            _buildRichText(context),
          ],
        ),
      ),
    );
  }

  _buildTitleText() {
    return const Text(
      AppStrings.signIn,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32,
        color: Colors.white,
      ),
    );
  }

  _buildTextFormField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Enter Email',
      ),
    );
    // return CustomTextFormField(controller: controller, validator: validator, text: text, hasIcon: hasIcon)
  }

  _buildContinueButton(context) {
    return CustomBtn(
      text: "Continue",
      onPressed: () {
        AppNavigator.push(context, const EnterPasswordPage());
      },
    );
  }

  _buildRichText(context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(text: AppStrings.dontHaveOne),
          TextSpan(
            text: AppStrings.createOne,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, const SignUpPage());
              },
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
