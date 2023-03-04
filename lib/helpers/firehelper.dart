// ignore_for_file: avoid_classes_with_only_static_members

import 'package:karaz_user/datamodels/nearbydriver.dart';

class FireHelper {
  static List<NearbyDriver> nearbyDriverList = <NearbyDriver>[];

  static void removeFromList(String key) {
    int index = nearbyDriverList
        .indexWhere((NearbyDriver element) => element.key == key);

    if (nearbyDriverList.isNotEmpty) {
      nearbyDriverList.removeAt(index);
    }
  }

  static void updateNearbyLocation(NearbyDriver driver) {
    int index = nearbyDriverList
        .indexWhere((NearbyDriver element) => element.key == driver.key);
    nearbyDriverList[index].longitude = driver.longitude;
    nearbyDriverList[index].latitude = driver.latitude;
  }
}
