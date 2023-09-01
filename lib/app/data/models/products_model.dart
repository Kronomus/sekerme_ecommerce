
class ProductsModel{
  final String id_categories;
  final String name_product;
  final String price_product;
  final String photo_path;
  final String units_in_stock;
  final String discontinued;


  ProductsModel({
    required this.id_categories,
    required this.name_product,
    required this.price_product,
    required this.photo_path,
    required this.units_in_stock,
    required this.discontinued
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    id_categories: json['id_categories'],
    name_product: json['name_product'],
    price_product: json['price_product'],
    photo_path: json['photo_path'],
    units_in_stock: json['units_in_stock'],
    discontinued: json['discontinued']
  );

  Map<String, dynamic> toJson() => {
    'id_categories': id_categories,
    'name_product': name_product,
    'price_product': price_product,
    'photo_path': photo_path,
    'units_in_stock': units_in_stock,
    'discontinued': discontinued
  };
}