class SintomasList {
  String urlImage;
  String texto;

  SintomasList({this.texto, this.urlImage});
}

List<SintomasList> sintomas = [
  SintomasList(urlImage: "lib/assets/febre.png", texto: "Febres"),
  SintomasList(urlImage: "lib/assets/tosses.png", texto: "Tosses"),
  SintomasList(
      urlImage: "lib/assets/dorGarganta.png", texto: "Dores na Garganta"),
  SintomasList(urlImage: "lib/assets/dorCabeca.png", texto: "Dores de Cabeça"),
];
