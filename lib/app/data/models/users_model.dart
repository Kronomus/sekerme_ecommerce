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

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
      email: json['email'],
      last_name: json['last_name'],
      first_name: json['first_name'],
      encrypted_password: json['encrypted_password'],
      birth_date: json['birth_date'],
      cell_phone: json['cell_phone'],
      home_phone: json['home_phone'],
      photo_path: json['photo_path']
    );
  }
  Map<String, dynamic> toJson() => {
    'email': email,
    'last_name': last_name,
    'first_name': first_name,
    'encrypted_password': encrypted_password,
    'birth_date': birth_date,
    'cell_phone': cell_phone,
    'home_phone': home_phone,
    'photo_path': photo_path
  };
}