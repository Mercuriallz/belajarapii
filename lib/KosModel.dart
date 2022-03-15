// To parse this JSON data, do
//
//     final kosModel = kosModelFromJson(jsonString);

import 'dart:convert';

KosModel kosModelFromJson(String str) => KosModel.fromJson(json.decode(str));

String kosModelToJson(KosModel data) => json.encode(data.toJson());

class KosModel {
    KosModel({
        this.status,
        this.data,
    });

    int status;
    List<Datum> data;

    factory KosModel.fromJson(Map<String, dynamic> json) => KosModel(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
        this.title,
        this.image,
        this.harga,
    });

    int id;
    String title;
    String image;
    String harga;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        harga: json["harga"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "harga": harga,
    };
}
