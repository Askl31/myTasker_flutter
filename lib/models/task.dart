class Task {
  final String name;
  bool isCheck = false;
  final String category;

  Task({
    this.name,
    this.isCheck = false,
    this.category,
  });

  void toogleCheck() => isCheck = !isCheck;
}
