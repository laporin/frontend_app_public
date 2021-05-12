class UserModel {
  final int id;
  final String name;
  final String username;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
  });

  static UserModel one() {
    return UserModel(id: 1, name: 'Admin', username: 'admin');
  }

  static List<UserModel> all() {
    return [
      UserModel(id: 1, name: 'Admin', username: 'admin'),
      UserModel(id: 2, name: 'User', username: 'user')
    ];
  }
}
