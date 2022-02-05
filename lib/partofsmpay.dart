class model_status {
  String? status;
  List<Data>? data;

  model_status({this.status, this.data});

  model_status.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? onlinePaymentKey;
  String? onlinePaymentPwd;

  Data({this.id, this.name, this.onlinePaymentKey, this.onlinePaymentPwd});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    onlinePaymentKey = json['online_payment_key'];
    onlinePaymentPwd = json['online_payment_pwd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['online_payment_key'] = this.onlinePaymentKey;
    data['online_payment_pwd'] = this.onlinePaymentPwd;
    return data;
  }
}
