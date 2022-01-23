import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class LovePage extends StatelessWidget {
  const LovePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: const Center(
        child: Text('Love Page'),
      ),
    );
  }
}
