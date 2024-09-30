import 'package:ecommerce/core/common/widgets/app_bar.dart';
import 'package:ecommerce/core/resources/app_navigator.dart';
import 'package:ecommerce/core/resources/app_strings.dart';
import 'package:ecommerce/core/common/widgets/custom_btn.dart';
import 'package:ecommerce/features/auth/presentation/pages/forget_password_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

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
            _buildTextFormField(),
            const SizedBox(height: 20),
            _buildContinueButton(),
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
        hintText: 'Enter Password',
      ),
    );
    // return CustomTextFormField(controller: controller, validator: validator, text: text, hasIcon: hasIcon)
  }

  _buildContinueButton() {
    return CustomBtn(text: "Continue", onPressed: () {});
  }

  _buildRichText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(text: AppStrings.forgetPasswordQuestion),
          TextSpan(
            text: AppStrings.resetPassword,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, const ForgetPasswordPage());
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
