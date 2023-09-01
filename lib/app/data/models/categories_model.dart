
class CategoriesModel {

  final String category_name;
  final String description;
  final String photo_path;

  CategoriesModel({
    required this.category_name,
    required this.description,
    required this.photo_path
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) => CategoriesModel(
    category_name: json['category_name'],
    description: json['description'],
    photo_path: json['photo_path']
  );

  Map<String, dynamic> toJson() => {
    'category_name': category_name,
    'description': description,
    'photo_path': photo_path
  };

}