class Todo {
  final String id;
  final String title;
  final String desc;
  bool isCompleted;

  Todo(
      {required this.id,
      required this.title,
      required this.desc,
      this.isCompleted = false});
}

List<Todo> dataTodo = [
  Todo(
      id: DateTime.now().toString(),
      title: "Mengerjakan tugas",
      desc: "Tugas kuliah"),
  Todo(
      id: DateTime.now().toString(),
      title: "Memasak",
      desc: "Memasak ikan bakar"),
];
