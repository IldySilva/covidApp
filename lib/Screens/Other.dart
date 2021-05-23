import 'package:NewCovidApp/widgets/Cards.dart';
import 'package:flutter/material.dart';
import 'package:NewCovidApp/widgets/appbarcustom.dart';

class OtherInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
                height: size.width / 6,
                color: Colors.indigo,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Actividades na Quarentena",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                )),
            CardsOther(
              texto: "Faça uma doação ",
              image: "lib/assets/doe.png",
            ),
            CardsOther(
              texto: "Procure uma Loja",
              image: "lib/assets/compra.png",
            ),
            CardsOther(
              texto: "Apresentações em Directo(TV)",
              image: "lib/assets/aprse.png",
            ),
            CardsOther(
              texto: "Apresentações em Directo(WEB)",
              image: "lib/assets/aprse.png",
            ),
          ],
        ),
      ),
    );
  }
}
