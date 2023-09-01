<<<<<<< HEAD

class UsersModel{

  final String last_name;
  final String first_name;
  final String birth_date;
  final String cell_phone;
  final String home_phone;
  final String photo_path;

  UsersModel({
    required this.last_name,
    required this.first_name,
    required this.birth_date,
    required this.cell_phone,
    required this.home_phone,
    required this.photo_path
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
    last_name: json['last_name'],
    first_name: json['first_name'],
=======
// Modelo de datos de usuarios
///Convert database model  for json 'Users' table to
/// internal class:
/// -Use 'fronJson' method to convert supabase response to [UsersModel]
/// -Use 'toJson' method to convert [UsersModel] to json

class UsersModel{

  final String  email;
  final String  last_name;
  final String  first_name;
  final String  encrypted_password;
  final String  birth_date;
  final String? cell_phone;
  final String? home_phone;
  final String? photo_path;

  UsersModel({
    required this.email,
    required this.last_name,
    required this.first_name,
    required this.encrypted_password,
    required this.birth_date,
    this.cell_phone,
    this.home_phone,
    this.photo_path
  });

  static UsersModel fromJson(Map<String, dynamic> json) => UsersModel(
    email: json['email'],
    last_name: json['last_name'],
    first_name: json['first_name'],
    encrypted_password: json['encrypted_password'],
>>>>>>> origin/dev
    birth_date: json['birth_date'],
    cell_phone: json['cell_phone'],
    home_phone: json['home_phone'],
    photo_path: json['photo_path']
  );

<<<<<<< HEAD
  Map<String, dynamic> toJson() => {
      'last_name' : last_name,
      'first_name': first_name,
      'birth_date': birth_date,
      'cell_phone': cell_phone,
      'home_phone': home_phone,
      'photo_path': photo_path
    };
=======
  Map<String, dynamic> toJson() =><String,dynamic> {
    'email': email,
    'last_name': last_name,
    'first_name': first_name,
    'encrypted_password': encrypted_password,
    'birth_date': birth_date,
    'cell_phone': cell_phone,
    'home_phone': home_phone,
    'photo_path': photo_path
  };




>>>>>>> origin/dev
}