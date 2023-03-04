// ignore_for_file: avoid_dynamic_calls

class Prediction {
  Prediction.fromJson(Map<dynamic, dynamic> json) {
    placeId = json['place_id'];
    mainText = json['structured_formatting']['main_text'];
    secondaryText = json['structured_formatting']['secondary_text'];
  }

  Prediction({
    this.placeId,
    this.mainText,
    this.secondaryText,
  });
  String? placeId;
  String? mainText;
  String? secondaryText;
}
