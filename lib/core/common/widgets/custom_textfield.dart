import 'package:ecommerce/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  void Function()? onpressedIcon;
  bool hasIcon = false;
  TextEditingController controller;
  String text;
  TextInputType? keyboardType;
  String? Function(String?)? validator;

  CustomTextFormField({
    super.key,
    required this.controller,
    required this.validator,
    required this.text,
    this.keyboardType,
    required this.hasIcon,
    this.onpressedIcon,
  });
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: (widget.hasIcon && !showPassword),
      decoration: InputDecoration(
        suffixIcon: widget.hasIcon
            ? IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: Icon(
                  showPassword ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.primary,
                ),
              )
            : null,
        labelText: widget.text,
        border: _border(),
        focusedBorder: _border(),
        enabledBorder: _border(),
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        fillColor: AppColors.background,
        filled: true,
      ),
      validator: widget.validator,
    );
  }

  static _border({Color color = AppColors.background}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color,
          width: 2,
        ),
      );
}
