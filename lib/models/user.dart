class User {
  User(this.name, this.nationalCode);
  String name;
  int nationalCode;

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "nationalCode": nationalCode,
    };
  }
}
