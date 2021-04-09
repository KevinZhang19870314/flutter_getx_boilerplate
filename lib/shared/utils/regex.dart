class Regex {
  static bool isEmail(String email) {
    RegExp regExp = new RegExp(r'\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*');
    return regExp.hasMatch(email);
  }
}
