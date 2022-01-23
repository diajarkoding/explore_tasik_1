import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: const Center(
        child: Text('Map Page'),
      ),
    );
  }
}
