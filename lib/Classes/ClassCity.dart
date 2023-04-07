class City {
  int? id;
  String? sendState;
  String? futerState;
  String? futerCity;
  String? transferFee;

  City(
      {this.id,
        this.sendState,
        this.futerState,
        this.futerCity,
        this.transferFee});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sendState = json['SendState'];
    futerState = json['FuterState'];
    futerCity = json['FuterCity'];
    transferFee = json['TransferFee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['SendState'] = this.sendState;
    data['FuterState'] = this.futerState;
    data['FuterCity'] = this.futerCity;
    data['TransferFee'] = this.transferFee;
    return data;
  }
}