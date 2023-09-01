
class RolModel{

  final rol_name;

  RolModel({
    required this.rol_name
  });

  factory RolModel.fromJson(Map<String, dynamic> json) => RolModel(
    rol_name: json['rol_name']
  );

  Map<String, dynamic> toJson() => {
    'rol_name': rol_name
  };

}