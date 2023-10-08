class usernodels {
  final String? firstName;
  final String? phone;
  final String? image;

  usernodels(
      {required this.firstName, required this.phone, required this.image});

  factory usernodels.fromJson(datjson) {
    return usernodels(
      firstName: datjson!["firstName"],
      phone: datjson!["phone"],
      image: datjson!["image"],
    );
  }
}
