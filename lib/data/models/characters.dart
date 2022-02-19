class Characters {
  int charId;
  String name;
  String nickName;
  String image;
  List<dynamic> jobs;
  String statusIfDeadOrAlive;
  List<dynamic> seasonAppearance;
  String actorName;
  String seriesCategory;
  List<dynamic> betterCallSaulAppearance;

  Characters.fromJson(Map<String, dynamic> json) {
    charId = json['char_id'];
    name = json['name'];
    nickName = json['nickname'];
    image = json['img'];
    jobs = json['occupation'];
    statusIfDeadOrAlive = json['status'];
    seasonAppearance = json['appearance'];
    actorName = json['portrayed'];
    seriesCategory = json['category'];
    betterCallSaulAppearance = json['better_call_saul_appearance'];
  }
}
