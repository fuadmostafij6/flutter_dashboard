import 'dart:html';

import 'package:flutter/material.dart';

import '../../Widget/sidebar.dart';
import '../../const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SidebarWidget(size: size,)
          ],
        ),
      ),
    );
  }


}
