class BarberEntity {
  final String bannerImage;
  final String bannerButtonTitle;
  final List<BarberShopEntity> nearestBarbershop;
  final List<BarberShopEntity> mostRecommended;
  final List<BarberShopEntity> list;

  BarberEntity({
    required this.bannerImage,
    required this.bannerButtonTitle,
    required this.nearestBarbershop,
    required this.mostRecommended,
    required this.list,
  });
}

class BarberShopEntity {
  final String name;
  final String locationWithDistance;
  final String image;
  final double reviewRate;

  BarberShopEntity({
    required this.name,
    required this.locationWithDistance,
    required this.image,
    required this.reviewRate,
  });
}
