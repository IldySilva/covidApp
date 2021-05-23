import 'dart:async';

import 'package:NewCovidApp/stores/controlador.dart';
import 'package:NewCovidApp/widgets/SwitchButtons.dart';
import 'package:NewCovidApp/widgets/dataContainer.dart';
import 'package:flutter/material.dart';
import 'package:NewCovidApp/widgets/appbarcustom.dart';
import 'package:get/get.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  Controlador controlador = Get.put(Controlador());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return controlador.data == null
        ? Center(child: CircularProgressIndicator())
        : Container(
            height: size.height,
            color: Colors.indigo,
            child: Column(
              children: [
                Container(
                  color: Colors.indigo,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: size.width / 28,
                      left: size.width / 28,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                        ),
                        AppBarCustom(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                        ),
                        Text("Estatísticas",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                        Padding(
                          padding: EdgeInsets.only(top: size.height / 45),
                        ),
                        SwitchButtons(),
                        Padding(
                          padding: EdgeInsets.only(top: size.height / 70),
                        ),
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height / 80),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                DataContainer(
                                  title: "Afectados",
                                  dataNumber: isAngola
                                      ? controlador.data["cases"].toString()
                                      : controlador.dataWorld["cases"]
                                          .toString(),
                                  cor: Colors.orange[400],
                                ),
                                DataContainer(
                                  title: "Óbitos",
                                  dataNumber: isAngola == true
                                      ? controlador.data["deaths"].toString()
                                      : controlador.dataWorld["deaths"]
                                          .toString(),
                                  cor: Colors.red[400],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                DataContainer(
                                  title: "Recuperados",
                                  dataNumber: isAngola == true
                                      ? controlador.data["recovered"].toString()
                                      : controlador.dataWorld["recovered"]
                                          .toString(),
                                  cor: Colors.green,
                                ),
                                DataContainer(
                                  title: "Ativos",
                                  dataNumber: isAngola == true
                                      ? controlador.data["active"].toString()
                                      : controlador.dataWorld["active"]
                                          .toString(),
                                  cor: Colors.blue[400],
                                ),
                                DataContainer(
                                  title: "Criticos",
                                  dataNumber: isAngola == true
                                      ? controlador.data["critical"].toString()
                                      : controlador.dataWorld["critical"]
                                          .toString(),
                                  cor: Colors.purple[400],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: size.height / 20),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    child: Container(
                      color: Colors.white,
                      height: size.height / 3.33,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: size.width / 28,
                          left: size.width / 28,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Casos de Hoje",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  isAngola == true
                                      ? controlador.data["todayCases"]
                                          .toString()
                                      : controlador.dataWorld["todayCases"]
                                          .toString(),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Óbitos de Hoje",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  isAngola == true
                                      ? controlador.data["todayDeaths"]
                                          .toString()
                                      : controlador.dataWorld["todayDeaths"]
                                          .toString(),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Recuperados De Hoje",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  isAngola == true
                                      ? controlador.data["todayRecovered"]
                                          .toString()
                                      : controlador.dataWorld["todayRecovered"]
                                          .toString(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
