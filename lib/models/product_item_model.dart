import 'dart:ui';
import 'package:flutter/widgets.dart';

class ProductInfor {
  String? name;
  double? cost;
  String? thumbnail;
  String? size;
  Color? colors;

  ProductInfor({
    this.name,
    this.cost,
    this.thumbnail,
    this.size,
    this.colors,
  });

  ProductInfor.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    cost = json['cost'];
    thumbnail = json['thumbnail'];
    size = json['size'];
    colors = json['colors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['cost'] = cost;
    data['thumbnail'] = thumbnail;
    data['size'] = size;
    data['colors'] = colors;
    return data;
  }
}
