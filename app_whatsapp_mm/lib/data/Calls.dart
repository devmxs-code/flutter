// ignore_for_file: file_names
class Calls {
  String name;
  String time;
  String imgUrl;
  bool callPlatform;

  Calls(
      {required this.name,
      required this.time,
      required this.imgUrl,
      required this.callPlatform});
}

List<Calls> callsList = [
  Calls(
      name: "Homem Aranha",
      time: "August 11, 9:27 AM",
      imgUrl: "Assets/Images"
          "/img1.jpeg",
      callPlatform: true),
  Calls(
      name: "Capitão America",
      time: "July 25, 8:02 AM",
      imgUrl: "Assets/Images"
          "/img2.jpeg",
      callPlatform: false),
  Calls(
      name: "Homem de Ferro",
      time: "June 19, 5:11 AM",
      imgUrl: "Assets/Images"
          "/img3.jpeg",
      callPlatform: true),
  Calls(
      name: "Batman",
      time: "June 16, 2:20 AM",
      imgUrl: "Assets/Images"
          "/img4.jpeg",
      callPlatform: false),
  Calls(
      name: "Flash",
      time: "May 16, 10:00 AM",
      imgUrl: "Assets/Images"
          "/img5.jpeg",
      callPlatform: false),
  Calls(
      name: "Mulher Gato",
      time: "April 24, 1:36 AM",
      imgUrl: "Assets/Images"
          "/img6.jpeg",
      callPlatform: true),
];
