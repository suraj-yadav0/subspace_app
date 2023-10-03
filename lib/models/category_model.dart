import 'dart:convert';



 

ArticleModel articleModelFromJson(String str) => ArticleModel.fromJson(json.decode(str));

String categoryModelToJsonFromJson(ArticleModel data) => json.encode(data.toJson());

class ArticleModel {
  String id;
  String image;
  String title;

  ArticleModel({
    required this.id,
    required this.image,
    required this.title,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        id: json["id"],
        image: json["image_url"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image_url": image,
        "title" : title,
      };
}