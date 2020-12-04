
class ChatModel{
  String name;
  String message;
  String time;
  String avatarURL;
  int countMessage;

  ChatModel({ this.name, this.message, this.time, this.avatarURL, this.countMessage });
}

List<ChatModel> dataListChat = [
  ChatModel(
    name: "Elvis Barrionuevo",
    message: "Flutter es sorprendente...",
    time: "15:33",
    avatarURL: "https://redgol.cl/__export/1597942612712/sites/redgol/img/2020/08/20/the-batman-logo-afiche-ok_crop1597942568441.jpeg_423682103.jpeg",
    countMessage: 5
  ),
  ChatModel(
      name: "Juan Lopez",
      message: "Págame lo que me debes",
      time: "20:33",
      avatarURL: "https://ojodepezfotografos.com/wp-content/uploads/2019/03/SESION-DE-FOTOS-PERFIL-PROFESIONAL-13.jpg",
      countMessage: 2
  ),
  ChatModel(
      name: "Fátima Gonzales",
      message: "Cómo te fue hoy?",
      time: "21:33",
      avatarURL: "https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos.jpg",
      countMessage: 9
  ),
  ChatModel(
      name: "Dario Fernandez",
      message: "No regreses con tu ex...",
      time: "08:29",
      avatarURL: "https://www.rutanmedellin.org/images/1pruebas/foto-persona.jpg",
      countMessage: 7
  ),
];