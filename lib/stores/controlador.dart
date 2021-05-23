import 'dart:convert';

import 'package:get/get.dart';
import "package:http/http.dart" as http;

class Controlador extends GetxController {
  var isNotificationOn = true.obs;
  var angolaData = false.obs;
  var dataWorld;
  var control = false.obs;
  var data;
  RxBool isDarkTheme = false.obs;
  fetchData() async {
    http.Response response = await http
        .get("https://corona.lmao.ninja/v3/covid-19/countries/angola");

    if (response.statusCode == 200) data = jsonDecode(response.body);

    http.Response responseWorld =
        await http.get("https://corona.lmao.ninja/v3/covid-19/all");

    dataWorld = jsonDecode(responseWorld.body);
    control = true.obs;
    update();
  }

  switchNotification() {
    print(isNotificationOn.toggle().value);
    update();
  }
}
