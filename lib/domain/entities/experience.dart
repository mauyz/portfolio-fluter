class Experience {
  final String job;
  final String date;
  final String? enterprise;
  final String type;
  final String location;
  final String description;
  final Set<String> stack;

  Experience({
    required this.job,
    required this.date,
    this.enterprise,
    required this.type,
    required this.location,
    required this.description,
    required this.stack,
  });
}
