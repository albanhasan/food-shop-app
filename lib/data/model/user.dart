class User {
  User({
    this.id_user,
    this.name,
    this.email,
    this.password,
    this.createdAt,
    this.updatedAt,
  });

  String? id_user;
  String? name;
  String? email;
  String? password;
  String? createdAt;
  String? updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id_user: json["id_user"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id_user": id_user,
        "name": name,
        "email": email,
        "password": password,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
