import 'package:flutter/material.dart';
import 'package:plant_pal/screens/welcome/welcome.dart';

void main() {
  runApp(PlantPal());
}


class PlantPal extends StatelessWidget {
  const PlantPal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
