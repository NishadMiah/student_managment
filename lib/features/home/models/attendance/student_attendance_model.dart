class Student {
  final String name;
  final String imageUrl;
  bool isPresent;
  Student({
    required this.name,
    required this.imageUrl,
    this.isPresent = true,
  });
}
