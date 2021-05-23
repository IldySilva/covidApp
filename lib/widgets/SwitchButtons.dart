import 'dart:async';

import 'package:NewCovidApp/Screens/dashBoardTab.dart';
import 'package:NewCovidApp/stores/controlador.dart';
import 'package:NewCovidApp/widgets/dataContainer.dart';
import 'package:flutter/material.dart';
import 'package:NewCovidApp/Screens/homePage.dart';
import 'package:get/get.dart';

class SwitchButtons extends StatefulWidget {
  @override
  _SwitchButtonsState createState() => _SwitchButtonsState();
}

bool isAngola = true;

class _SwitchButtonsState extends State<SwitchButtons> {
  Controlador controlador = Get.put(Controlador());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        color: Colors.white24,
        height: size.height / 18,
        width: size.width / (2.2 / 2),
        child: Row(
          children: [
            InkWell(
              splashColor: Colors.indigo,
              onTap: () {
                setState(() {
                  isAngola = true;
                  Get.forceAppUpdate();
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: size.height / 18,
                  width: size.width / 2.2,
                  color: isAngola ? Colors.white : Colors.white24,
                  alignment: Alignment.center,
                  child: Text("Angola"),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  build(context);
                  isAngola = false;
                  Get.forceAppUpdate();
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: isAngola == false ? Colors.white : Colors.white24,
                  padding: EdgeInsets.all(8),
                  height: size.height / 18,
                  width: size.width / 2.2,
                  alignment: Alignment.center,
                  child: Text("Global"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
