import 'dart:math';

class SignUpModel {
  final String? name;
  final String? email;
  final String? password;
  final String? pin;
  final String? profilePicture;
  final String? idCard;

  SignUpModel({
    this.name,
    this.email,
    this.password,
    this.pin,
    this.profilePicture,
    this.idCard,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'pin': pin,
      'profile_picture': profilePicture,
      'ktp': idCard,
    };
  }

  SignUpModel copyWith({String? pin, String? profilePicture, String? idCard}) =>
      SignUpModel(
        name: name,
        email: email,
        password: password,
        pin: pin ?? this.pin,
        profilePicture: profilePicture ?? this.profilePicture,
        idCard: idCard ?? this.idCard,
      );
}
