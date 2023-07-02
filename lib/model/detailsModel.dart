// To parse this JSON data, do
//
//     final detailsModel = detailsModelFromJson(jsonString);

import 'dart:convert';

DetailsModel detailsModelFromJson(String str) => DetailsModel.fromJson(json.decode(str));

String detailsModelToJson(DetailsModel data) => json.encode(data.toJson());

class DetailsModel {
    List<Datum>? data;

    DetailsModel({
        this.data,
    });

    factory DetailsModel.fromJson(Map<String, dynamic> json) => DetailsModel(
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    String? title;
    String? slug;
    String? image;
    Category? category;

    Datum({
        this.title,
        this.slug,
        this.image,
        this.category,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        title: json["title"],
        slug: json["slug"],
        image: json["image"],
        category: categoryValues.map[json["category"]]!,
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "slug": slug,
        "image": image,
        "category": categoryValues.reverse[category],
    };
}

enum Category { ALONE }

final categoryValues = EnumValues({
    "Alone": Category.ALONE
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
