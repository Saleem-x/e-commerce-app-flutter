class USerModel {
  final String fname;
  final String lname;
  final String email;
  final String phone;
  final String gender;
  final String password;

  USerModel(
      {required this.fname,
      required this.lname,
      required this.email,
      required this.phone,
      required this.gender,
      required this.password});
}

class LoginModel {
  final String username;
  final String password;

  LoginModel({required this.username, required this.password});
}
