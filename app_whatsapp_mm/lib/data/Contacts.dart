// ignore_for_file: file_names

class Contacts {
  String name;
  String message;
  String time;
  String imgUrl;

  Contacts(
      {required this.name,
      required this.message,
      required this.time,
      required this.imgUrl});
}

List<Contacts> contactList = [
  Contacts(
      name: "Homem Aranha",
      message: "Partiu",
      time: "9:27 AM",
      imgUrl: "Assets/Images"
          "/img1.jpeg"),
  Contacts(
      name: "Capitão America",
      message: "Precisamos de um plano de ataque!",
      time: "8:02 AM",
      imgUrl: "Assets/Images"
          "/img2.jpeg"),
  Contacts(
      name: "Homem de Ferro",
      message: "Qual é a boa para hoje?",
      time: "5:11 AM",
      imgUrl: "Assets/Images"
          "/img3.jpeg"),
  Contacts(
      name: "Batman",
      message: "Se precisar, me manda msg",
      time: "2:20 AM",
      imgUrl: "Assets/Images"
          "/img4.jpeg"),
  Contacts(
      name: "Flash",
      message: "Vou ali rapidão e já volto",
      time: "10:00 AM",
      imgUrl: "Assets/Images"
          "/img5.jpeg"),
  Contacts(
      name: "Mulher Gato",
      message: "Eu estou no controle, relaxa",
      time: "1:36 AM",
      imgUrl: "Assets/Images"
          "/img6.jpeg"),
  Contacts(
      name: "Aguaman",
      message: "jaja eu to ai.",
      time: "1:36 AM",
      imgUrl: "Assets/Images"
          "/img7.jpeg"),
  Contacts(
      name: "Wolverine",
      message: "Esquece essa historia",
      time: "1:36 AM",
      imgUrl: "Assets/Images"
          "/img8.jpeg"),
];
