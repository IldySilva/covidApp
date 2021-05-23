class PreventionsImage {
  String urlImage;
  String texto;

  PreventionsImage({this.texto, this.urlImage});
}

List<PreventionsImage> preventions = [
  PreventionsImage(urlImage: "lib/assets/useMask.png", texto: "Use Mascara"),
  PreventionsImage(
      urlImage: "lib/assets/tapabouca.png", texto: "Tape a boca e o Naris"),
  PreventionsImage(
      urlImage: "lib/assets/fiqueEmCasa.png", texto: "Fique Em Casa"),
  PreventionsImage(
      urlImage: "lib/assets/evitecontacto.png", texto: "Evite contacto Fisico"),
  PreventionsImage(
      urlImage: "lib/assets/vaiAoMedico.png", texto: "Vá ao Médico"),
];
