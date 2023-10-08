class MassegeModel {
  String? Massege;
  String? id;

  MassegeModel({
    required this.Massege,
    required this.id,
  });

  factory MassegeModel.fromJson(datjson) {
    return MassegeModel(
      Massege: datjson!["Massege"],
      id: datjson!["id"],
    );
  }
}
