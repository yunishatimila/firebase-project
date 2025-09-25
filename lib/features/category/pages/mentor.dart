class Mentors {
  String? name;
  int? age;
  String? email;
  int? number;
  String? special;
  String? bio;

  Mentors(
      {this.name, this.age, this.email, this.number, this.special, this.bio});

  Mentors.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    email = json['email'];
    number = json['number'];
    special = json['special'];
    bio = json['bio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['email'] = this.email;
    data['number'] = this.number;
    data['special'] = this.special;
    data['bio'] = this.bio;
    return data;
  }
}
