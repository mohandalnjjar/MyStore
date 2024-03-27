abstract class Validators {
  //email validator
  static String? emailValidator(String? value) {
    if (RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value!)) {
      return null;
    } else {
      return "Enter Valid Email";
    }
  }

  //Password validator

  static String? passwordValidator(String? value) {
    if (RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(value!)) {
      return null;
    } else {
      return "Enter Valid Password";
    }
  }
}
