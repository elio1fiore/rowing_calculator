const String tableFeature = "features";

class FeatureFields {
  static final List<String> values = [
    id,
    player,
    dateTime,
    isImportant,
    description,
    title,
  ];

  static const String id = "_id";
  static const String player = "player";
  static const String dateTime = "dateTime";
  static const String isImportant = "isImportant";
  static const String description = "description";
  static const String title = "title";
}

class FeatureEntity {
  final int? id;
  final String player;
  final DateTime dateTime;
  final bool isImportant;
  final String description;
  final String title;

  FeatureEntity({
    this.id,
    required this.player,
    required this.dateTime,
    required this.isImportant,
    required this.description,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      FeatureFields.id: id,
      FeatureFields.player: player,
      FeatureFields.dateTime: dateTime.toIso8601String(),
      FeatureFields.isImportant: isImportant ? 1 : 0,
      FeatureFields.description: description,
      FeatureFields.title: title,
    };
  }

  FeatureEntity copyWith({
    int? id,
    String? player,
    DateTime? dateTime,
    bool? isImportant,
    String? description,
    String? title,
  }) {
    return FeatureEntity(
      id: id ?? this.id,
      player: player ?? this.player,
      dateTime: dateTime ?? this.dateTime,
      isImportant: isImportant ?? this.isImportant,
      description: description ?? this.description,
      title: title ?? this.title,
    );
  }

  factory FeatureEntity.fromMap(Map<String, dynamic> map) {
    return FeatureEntity(
      id: map[FeatureFields.id] != null ? map[FeatureFields.id] as int : null,
      player: map[FeatureFields.player] as String,
      dateTime: DateTime.parse(
        map[FeatureFields.dateTime] as String,
      ),
      isImportant: map[FeatureFields.isImportant] == 1,
      description: map[FeatureFields.description] as String,
      title: map[FeatureFields.title] as String,
    );
  }
}
