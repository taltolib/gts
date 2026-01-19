import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gts/generated/fonts/app_fonts.dart';

enum FieldValidator { email, password, confirmPassword }

class AuthTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextEditingController? passwordController;
  final String label;
  final FieldValidator? validatorType;
  final bool isPassword;
  final VoidCallback? onIconTap;
  final bool focused;
  final int? maxLength;
  final String? counterText;

  const AuthTextField({
    super.key,
    required this.controller,
    required this.label,
    this.validatorType,
    this.passwordController,
    this.isPassword = false,
    this.onIconTap,
    this.focused = false,
    this.maxLength,
    this.counterText,
  });

  @override
  State<AuthTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<AuthTextField> {
  late bool obscure;

  @override
  void initState() {
    super.initState();
    obscure = widget.isPassword;
  }

  String? _validator(String? value) {
    final v = value ?? '';

    switch (widget.validatorType) {
      case FieldValidator.email:
        if (v.isEmpty) return 'required_field'.tr();
        if (!RegExp(r'^[\w\-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(v)) {
          return '';
        }
        return null;

      case FieldValidator.password:
        if (v.isEmpty) return 'required_field'.tr();
        if (v.length < 8) return 'min_length_8'.tr();
        if (!RegExp(r'[A-Z]').hasMatch(v)) {
          return '';
        }
        return null;

      case FieldValidator.confirmPassword:
        if (v != widget.passwordController?.text) {
          return '';
        }
        return null;

      case null:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 300.w,
      decoration: BoxDecoration(
        color: widget.focused
            ? Colors.white
            : Colors.blue,
        borderRadius: const BorderRadius.all(Radius.circular(20)).r,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8.r,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.h),
        child: Row(
          children: [

            Expanded(
              flex: 6,
              child: TextFormField(
                controller: widget.controller,
                validator: _validator,
                maxLength: widget.maxLength,
                obscureText: obscure,
                decoration: InputDecoration(
                  counterText: widget.counterText,
                  border: InputBorder.none,
                  labelText: widget.label,
                  labelStyle: AppFonts.mulish.s14w400(),
                  suffixIcon: widget.isPassword
                      ? IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    icon: Icon(
                      obscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      setState(() => obscure = !obscure);
                    },
                  )
                      : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
