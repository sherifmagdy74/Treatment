class UserModel {
  String name = "";
  String email = "";
  String phone = "";
  String age = "";
  String specialty = "";

  UserModel({required this.name, required this.email, required this.phone,required this.specialty,required this.age});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    age = json['age'];
    specialty = json['specialty'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      ' age':  age,
      'specialty': specialty,
    };
  }
}
