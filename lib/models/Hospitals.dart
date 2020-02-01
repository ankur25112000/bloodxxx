
class Hospital {
  String name;
  String location;
  String phone;

  Hospital({this.name, this.location, this.phone});

  Hospital.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    location = json['Location'];
    phone = json['Phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Location'] = this.location;
    data['Phone'] = this.phone;
    return data;
  }


}