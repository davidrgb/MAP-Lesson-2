enum Classification {
  FirstYear, SecondYear, ThirdYear, FourthYear, Graduate,
}

enum Major {
  CS, SE, DS, CE, Other,
}

enum Language {
  Dart, Java, JavaScript, Cpp, Csharp, Python,
}

class UserRecord {
  late String email;
  late String password;
  late String name;
  late String phone;
  late int age;
  late Classification classification;
  late Major major;
  late Map<Language, bool> languages;

  UserRecord({
    this.email = '',
    this.password = '',
    this.name = '',
    this.phone = '',
    this.age = -1,
    this.classification = Classification.FirstYear,
    this.major = Major.CS,
  }) {
    languages = {};
    Language.values.forEach((e) => languages[e] = false);
  }
}