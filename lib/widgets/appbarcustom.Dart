import 'package:NewCovidApp/stores/controlador.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarCustom extends StatefulWidget {
  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    Controlador controlador = Get.put(Controlador());
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox.shrink(),
        Row(
          children: [
            Obx(() => IconButton(
                icon: controlador.isNotificationOn.value == false
                    ? Icon(Icons.notifications)
                    : Icon(Icons.notifications_none),
                onPressed: () => controlador.switchNotification())),
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  Get.forceAppUpdate();
                })
          ],
        )
      ],
    );
  }
}
