class Transfer {
  int? id;
  String? theSendname;
  String? sendphone;
  String? theState;
  String? city;
  String? futureName;
  String? futurephone;
  int? theamount;
  int? thecost;
  String? currencytype;
  String? date;

  Transfer(
      {this.id,
        this.theSendname,
        this.sendphone,
        this.theState,
        this.city,
        this.futureName,
        this.futurephone,
        this.theamount,
        this.thecost,
        this.currencytype,
        this.date});

  Transfer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    theSendname = json['theSendname'];
    sendphone = json['sendphone'];
    theState = json['theState'];
    city = json['city'];
    futureName = json['futureName'];
    futurephone = json['futurephone'];
    theamount = json['theamount'];
    thecost = json['thecost'];
    currencytype = json['currencytype'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['theSendname'] = this.theSendname;
    data['sendphone'] = this.sendphone;
    data['theState'] = this.theState;
    data['city'] = this.city;
    data['futureName'] = this.futureName;
    data['futurephone'] = this.futurephone;
    data['theamount'] = this.theamount;
    data['thecost'] = this.thecost;
    data['currencytype'] = this.currencytype;
    data['date'] = this.date;
    return data;
  }
}