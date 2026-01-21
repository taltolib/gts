
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/tr/app_text.dart';
import 'package:gts/shared/widget/auth_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AuthTextField(
              controller: loginController,
              label: AppText.auth.login.tr(),
            ),
            AuthTextField(
              controller: passwordController,
              label:'Парол',
              isPassword: true,
            ),
            SizedBox(height: 10),
            buttonLogin(context),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Пройди регмстрацию',style: AppFonts.mulish.s14w400(),),
                buttonRegister(context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buttonLogin(BuildContext context) {
  return InkWell(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    focusColor: Colors.transparent,
    onTap: () async {
      context.go('/home');
    },
    child: Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Center(
        child: Text('Зарегистрироватся',style: AppFonts.mulish.s12w600(),),
      ),
    ),
  );
}

Widget buttonRegister(BuildContext context) {
  return InkWell(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    focusColor: Colors.transparent,
    onTap: () {},
    child: Text('Регистрация',style: AppFonts.mulish.s12w600(),),
  );
}
