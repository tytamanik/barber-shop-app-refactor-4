import '../../domain/entities/barber_entity.dart';

class BarberModel extends BarberEntity {
  BarberModel({
    required super.bannerImage,
    required super.bannerButtonTitle,
    required super.nearestBarbershop,
    required super.mostRecommended,
    required super.list,
  });

  factory BarberModel.fromJson(Map<String, dynamic> json) {
    return BarberModel(
      bannerImage: json['banner']['image'],
      bannerButtonTitle: json['banner']['button_title'],
      nearestBarbershop: (json['nearest_barbershop'] as List)
          .map((item) => BarberShopModel.fromJson(item))
          .toList(),
      mostRecommended: (json['most_recommended'] as List)
          .map((item) => BarberShopModel.fromJson(item))
          .toList(),
      list: (json['list'] as List)
          .map((item) => BarberShopModel.fromJson(item))
          .toList(),
    );
  }
}

class BarberShopModel extends BarberShopEntity {
  BarberShopModel({
    required super.name,
    required super.locationWithDistance,
    required super.image,
    required super.reviewRate,
  });

  factory BarberShopModel.fromJson(Map<String, dynamic> json) {
    return BarberShopModel(
      name: json['name'],
      locationWithDistance: json['location_with_distance'],
      image: json['image'],
      reviewRate: (json['review_rate'] as num).toDouble(),
    );
  }
}
