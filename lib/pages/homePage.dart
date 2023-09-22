import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:learnle/models/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        centerTitle: true,
        title: const Text(
          "LearnLE",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/search.svg"))
        ],
      ),
      body: NavigationPage(),
    );
  }
}
