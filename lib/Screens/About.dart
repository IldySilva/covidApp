import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: size.height / 9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("lib/assets/useMask.png"),
                  ),
                  Text(
                    "Angola Covid-19 Tracker",
                    style: TextStyle(fontSize: 18),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: size.width / 1.4,
                        child: Text(
                          "Actualização dos Dados da Pandemia do Covid 19,em Angola.",
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Divider(color: Colors.grey[800]),
      Padding(
        padding: EdgeInsets.only(bottom: size.height / 9),
        child: Column(children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("lib/assets/cacau.jpg"),
          ),
          Text(
            "Ildeberto Vasconcelos",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Desenvolvedor Mobile"),
              Text(" | "),
              Text("Ui & Ux Designer"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ]),
      )
    ]);
  }
}
