import 'package:flutter/material.dart';
import 'package:futurehome_test1/screen/home/view/home_screen_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: HomeScreenView(),
    );
  }
}
