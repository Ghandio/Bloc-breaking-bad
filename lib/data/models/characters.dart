class Characters {
  late int charId;
  late String name;
  late String nickName;
  late String image;
  late List<dynamic> jobs;
  late String statusIfDeadOrAlive;
  late List<dynamic> seasonAppearance;
  late String actorName;
  late String seriesCategory;
  late List<dynamic> betterCallSaulAppearance;

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
