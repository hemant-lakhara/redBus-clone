import 'package:flutter/material.dart';

class OnBoardScreen extends StatefulWidget {
   OnBoardScreen({Key? key}) : super(key: key);
  final PageController _pageController = PageController();
  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container()
    );
  }
}
