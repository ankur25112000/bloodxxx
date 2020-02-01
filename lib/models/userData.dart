
class UserData {
  int id;
  String url;
  String firstname;
  String lastname;
  String bloodgroup;
  int age;
  String gender;
  String address;
  String lastBloodDonated;
  String healthProblems;

  UserData(
      {this.id,
        this.url,
        this.firstname,
        this.lastname,
        this.bloodgroup,
        this.age,
        this.gender,
        this.address,
        this.lastBloodDonated,
        this.healthProblems});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    bloodgroup = json['bloodgroup'];
    age = json['age'];
    gender = json['gender'];
    address = json['address'];
    lastBloodDonated = json['last_blood_donated'];
    healthProblems = json['health_problems'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['bloodgroup'] = this.bloodgroup;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['address'] = this.address;
    data['last_blood_donated'] = this.lastBloodDonated;
    data['health_problems'] = this.healthProblems;
    return data;
  }
}