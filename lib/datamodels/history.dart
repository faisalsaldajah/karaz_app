class History {
  History.fromJson(Map<String, dynamic> json) {
    totalRide = json['totalRide'];
    totalIncome = json['totalIncome'];
    historyTripDetail = json['historyTripDetail'] != null
        ? HistoryTripDetail.fromJson(json['historyTripDetail'])
        : null;
  }

  History({this.totalRide, this.totalIncome, this.historyTripDetail});
  int? totalRide;
  double? totalIncome;
  HistoryTripDetail? historyTripDetail;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalRide'] = totalRide;
    data['totalIncome'] = totalIncome;
    if (historyTripDetail != null) {
      data['historyTripDetail'] = historyTripDetail!.toJson();
    }
    return data;
  }
}

class HistoryTripDetail {
  HistoryTripDetail.fromJson(Map<String, dynamic> json) {
    destination = json['destination'] != null
        ? Destination.fromJson(json['destination'])
        : null;
    pickUp =
        json['pickUp'] != null ? Destination.fromJson(json['pickUp']) : null;
    riderID = json['userID'];
    destinationAddress = json['destinationAddress'];
    pickUpAddress = json['pickUpAddress'];
    time = json['time'];
    price = json['price'];
    riderName = json['riderName'];
    status = json['status'];
    paymentMethod = json['paymentMethod'];
    driverID = json['driverID'];
  }

  HistoryTripDetail({
    this.destination,
    this.pickUp,
    this.riderID,
    this.destinationAddress,
    this.pickUpAddress,
    this.time,
    this.price,
    this.riderName,
    this.status,
    this.paymentMethod,
  });
  Destination? destination;
  Destination? pickUp;
  String? riderID;
  String? driverID;
  String? destinationAddress;
  String? pickUpAddress;
  String? time;
  double? price;
  String? riderName;
  String? status;
  String? paymentMethod;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (destination != null) {
      data['destination'] = destination!.toJson();
    }
    if (pickUp != null) {
      data['pickUp'] = pickUp!.toJson();
    }
    data['driverID'] = driverID;
    data['userID'] = riderID;
    data['destinationAddress'] = destinationAddress;
    data['pickUpAddress'] = pickUpAddress;
    data['time'] = time;
    data['price'] = price;
    data['riderName'] = riderName;
    data['status'] = status;
    data['paymentMethod'] = paymentMethod;
    return data;
  }
}

class Destination {
  Destination.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    long = json['long'];
  }

  Destination({this.lat, this.long});
  double? lat;
  double? long;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lat'] = lat;
    data['long'] = long;
    return data;
  }
}
