import 'package:NewCovidApp/stores/controlador.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:url_launcher/url_launcher.dart' as urlLauncher;

class HeaderPrincipal extends StatefulWidget {
  @override
  _HeaderPrincipalState createState() => _HeaderPrincipalState();
}

_textMe() async {
  // Android
  const uri = 'sms:111?body=Requerimento%20de%20assitência%20medica%20';
  if (await urlLauncher.canLaunch(uri)) {
    await urlLauncher.launch(uri);
  } else {
    // iOS
    const uri = 'sms:0039-222-060-888';
    if (await urlLauncher.canLaunch(uri)) {
      await urlLauncher.launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}

_callMe() async {
  const uri = 'tel:111';
  if (await urlLauncher.canLaunch(uri)) {
    await urlLauncher.launch(uri);
    print("chamando");
  } else {
    // iOS
    const uri = 'sms:0039-222-060-888';
    if (await urlLauncher.canLaunch(uri)) {
      await urlLauncher.launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}

class _HeaderPrincipalState extends State<HeaderPrincipal> {
  Controlador controlador = Get.put(Controlador());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Container(
        height: size.height / 2.4,
        decoration: BoxDecoration(
          color: Colors.indigo[400],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              45,
            ),
            bottomRight: Radius.circular(
              45,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: size.height / 50,
            right: size.width / 28,
            left: size.width / 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.info,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                  Row(
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
                              onPressed: () => {
                                    print(Get.width),
                                    print(size.width),
                                    controlador.switchNotification(),
                                  })),
                          IconButton(
                            icon: Icon(Icons.refresh),
                            onPressed: () {
                              print("updated");
                              Get.forceAppUpdate();
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.height / 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Covid-19",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w900)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: size.height / 18,
                        width: size.width / 3.4,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage('lib/assets/ao.png'),
                            ),
                            SizedBox(width: size.width / 90),
                            Text("Angola"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width / 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sentes-te Doente?",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                    SizedBox(height: size.height / 70),
                    Text(
                        "Se te sentes Doente com algum sintoma da Covid-19,por favor deixe uma SMS ou Ligue para assistência imediata.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: size.height / 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () => _callMe,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: size.height / 17,
                          width: size.width / 2.7,
                          color: Colors.red[400],
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.call),
                              Text(
                                "Ligar Agora",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: _textMe,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: size.height / 17,
                          width: size.width / 2.7,
                          color: Colors.blue[400],
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.sms),
                              Text(
                                "Enviar texto",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
