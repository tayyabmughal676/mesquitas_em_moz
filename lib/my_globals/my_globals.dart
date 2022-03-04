
import '../local_cache/utils.dart';
import '../res/strings.dart';

class MyGlobals {
  static String userID = PreferenceUtils.getString(Strings.loginUserId) ?? "";
  static dynamic getUserLatLng;
  static dynamic getUserCurrentLocationMarkTitle;

  static bool? storedSelectedService;
  static int? storedSelectedServiceID;
  static dynamic userSelectedLocationLat;
  static dynamic userSelectedLocationLng;
  static dynamic caseManagerId;
  static dynamic getSignUpUserId;
}
