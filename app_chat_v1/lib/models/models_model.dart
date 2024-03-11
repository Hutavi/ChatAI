// ignore_for_file: public_member_api_docs, sort_constructors_first
class ModelsModel {
  final String id;
  final int created;
  final String ownedBy;

  ModelsModel({
    required this.id,
    required this.created,
    required this.ownedBy,
  });

  factory ModelsModel.fromJson(Map<String, dynamic> json) => ModelsModel(
        id: json["id"],
        created: json["created"],
        ownedBy: json["owned_by"],
      );

  static List<ModelsModel> modelsFromSnapshot(List modelSnapshot) {
    return modelSnapshot.map((data) => ModelsModel.fromJson(data)).toList();
  }
}
