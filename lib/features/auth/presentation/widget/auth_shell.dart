import 'package:flutter/material.dart';

class AuthShell extends StatelessWidget {
  const AuthShell({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.brightness_6,
                    size: 30,
                    color: Colors.blue,
                  ),
                  onPressed: () {}
                ),
              ],
            ),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
