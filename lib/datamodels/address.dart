class Address {
  Address({
    this.placeId,
    this.latitude,
    this.longitude,
    this.placeName,
    this.placeFormattedAddress,
  });
  String? placeName;
  double? latitude;
  double? longitude;
  String? placeId;
  String? placeFormattedAddress;
}
