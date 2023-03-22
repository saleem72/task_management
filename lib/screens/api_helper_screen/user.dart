//

class User {
  final String name;
  final String username;
  final String email;
  // final String degree;

  User({
    required this.name,
    required this.username,
    required this.email,
    // required this.degree,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'username': username,
      'email': email,
      // 'degree': degree,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      username: map['username'] as String,
      email: map['email'] as String,
      // degree: map['degree'],
    );
  }
}
