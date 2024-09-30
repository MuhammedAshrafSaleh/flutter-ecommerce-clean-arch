import 'package:ecommerce/core/common/widgets/app_bar.dart';
import 'package:ecommerce/core/resources/app_navigator.dart';
import 'package:ecommerce/core/resources/app_strings.dart';
import 'package:ecommerce/core/common/widgets/custom_btn.dart';
import 'package:ecommerce/features/auth/presentation/pages/enter_password_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
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
            _buildNameField(),
            const SizedBox(height: 10),
            _buildEmailField(),
            const SizedBox(height: 10),
            _buildPasswordField(),
            const SizedBox(height: 10),
            _buildConfirmPassowrdField(),
            const SizedBox(height: 20),
            _buildContinueButton(context),
            const SizedBox(height: 15),
            _buildRichText(context),
          ],
        ),
      ),
    );
  }

  _buildTitleText() {
    return const Text(
      AppStrings.createAccount,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32,
        color: Colors.white,
      ),
    );
  }

  _buildEmailField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Enter Email',
      ),
    );
    // return CustomTextFormField(controller: controller, validator: validator, text: text, hasIcon: hasIcon)
  }

  _buildNameField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: AppStrings.enterName,
      ),
    );
    // return CustomTextFormField(controller: controller, validator: validator, text: text, hasIcon: hasIcon)
  }

  _buildPasswordField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: AppStrings.enterPassword,
      ),
    );
    // return CustomTextFormField(controller: controller, validator: validator, text: text, hasIcon: hasIcon)
  }

  _buildConfirmPassowrdField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: AppStrings.confirmPassowrd,
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

  _buildRichText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(text: AppStrings.alreadyHaveOne),
          TextSpan(
            text: AppStrings.signIn,
            recognizer: TapGestureRecognizer()..onTap = () {},
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
