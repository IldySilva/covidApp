import 'dart:async';

import 'package:NewCovidApp/Screens/About.dart';
import 'package:NewCovidApp/Screens/Other.dart';
import 'package:NewCovidApp/Screens/dashBoardTab.dart';
import 'package:NewCovidApp/Screens/homeTab.dart';
import 'package:NewCovidApp/stores/controlador.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Controlador controlador = Get.put(Controlador());
  var bottomIndex = 0;

  fetchData() async {
    await controlador.fetchData();

    setState(() {});

    print("up");
  }

  @override
  void initState() {
    super.initState();

    fetchData();

    controler =
        new TabController(length: 3, vsync: this, initialIndex: bottomIndex);
  }

  TabController controler;
  var tabIndex;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: bottomIndex,
            elevation: 0,
            onTap: (index) {
              setState(() {
                bottomIndex = index;

                controler.animateTo(bottomIndex);
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assessment), title: Text("")),
              BottomNavigationBarItem(icon: Icon(Icons.sort), title: Text("")),
            ]),
        drawer: Drawer(child: AboutMe()),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: controler,
          children: [
            SingleChildScrollView(
                physics: BouncingScrollPhysics(), child: HomeTela()),
            SingleChildScrollView(child: DashBoard()),
            OtherInfo(),
          ],
        ),
      ),
    );
  }
}
