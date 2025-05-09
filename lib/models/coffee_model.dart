class CoffeeModel {
  final String name;
  final String image;
  final double price;
  final String desc;

  CoffeeModel({
    required this.name,
    required this.image,
    this.desc = 'Best Coffee',
    this.price = 30,
  });
}
