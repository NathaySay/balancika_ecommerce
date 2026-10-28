class MenuItem {
  final String id;
  final String name;
  final String subtitle;
  final String imageUrl;
  final double priceUsd;
  final int priceKhr;
  final String categoryId;
  final String? khmerName;

  const MenuItem({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.imageUrl,
    required this.priceUsd,
    required this.priceKhr,
    required this.categoryId,
    this.khmerName,
  });
}
