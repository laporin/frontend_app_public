class UserModel {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? password;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.password,
    required this.username,
  });

  static UserModel one() {
    return UserModel(id: 1, name: 'Admin', username: 'admin', email: 'admin@example.com');
  }

  static List<UserModel> all() {
    return [
      UserModel(id: 1, name: 'Admin', username: 'admin', email: 'admin@example.com'),
      UserModel(id: 2, name: 'User', username: 'user', email: 'user@example.com')
    ];
  }
}
