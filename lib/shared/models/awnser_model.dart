import 'dart:convert';

class AnswersModel {
  final String title;
  final bool isRight;

  AnswersModel({
    required this.title,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRight': isRight,
    };
  }

  factory AnswersModel.fromMap(Map<String, dynamic> map) {
    return AnswersModel(
      title: map['title'],
      isRight: map['isRight'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswersModel.fromJson(String source) => AnswersModel.fromMap(json.decode(source));
}
