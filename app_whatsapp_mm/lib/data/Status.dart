// ignore_for_file: file_names
class Status {
  String name;
  String time;
  String statusUrl;

  Status({required this.name, required this.time, required this.statusUrl});
}

List<Status> statusList = [
  Status(
      name: "Homem Aranha",
      time: "Today, 9:27 AM",
      statusUrl: "Assets/Images"
          "/img1.jpeg"),
  Status(
      name: "Capitão America",
      time: "Today, 8:02 AM",
      statusUrl: "Assets/Images"
          "/img2.jpeg"),
  Status(
      name: "Homem de Ferro",
      time: "Today, 5:11 AM",
      statusUrl: "Assets/Images"
          "/img3.jpeg"),
  Status(
      name: "Batman",
      time: "Today, 2:20 AM",
      statusUrl: "Assets/Images"
          "/img4.jpeg"),
  Status(
      name: "Flash",
      time: "Today, 10:00 AM",
      statusUrl: "Assets/Images"
          "/img5.jpeg"),
  Status(
      name: "Mulher Gato",
      time: "Today, 1:36 AM",
      statusUrl: "Assets/Images"
          "/img6.jpeg"),
];
