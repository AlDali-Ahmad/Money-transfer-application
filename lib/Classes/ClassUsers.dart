class Users{
  int? id;
  String? username;
  String? pasword;

  Users({this.id, this.username, this.pasword});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    pasword = json['pasword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['pasword'] = this.pasword;
    return data;
  }
}