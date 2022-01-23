import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: const Center(
        child: Text('Setting Page'),
      ),
    );
  }
}
