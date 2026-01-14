import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,

        );
      },
    );
  }
}
