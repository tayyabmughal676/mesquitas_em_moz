import '../screens/get_started_screens/get_started_screen.dart';
import '../screens/main_home_screens/duas_screens/dua_after_salah_screens/dua_after_salah_screen.dart';
import '../screens/main_home_screens/duas_screens/duas_screen.dart';
import '../screens/main_home_screens/main_home_screen.dart';
import '../screens/main_home_screens/masjids_screens/masjid_detail_screens/masjid_detail_screen.dart';
import '../screens/main_home_screens/masjids_screens/masjids_screen.dart';
import '../screens/main_home_screens/prayer_screens/prayer_screen.dart';
import '../screens/main_home_screens/province_screens/province_screen.dart';
import '../screens/main_home_screens/quibla_screens/quibla_screen.dart';

class Routes {
  static const String splash = '/';
  static const String mainHomeScreen = '/mainHomeScreen';
  static const String quiblaScreen = '/quiblaScreen';
  static const String masjidsScreen = '/masjidsScreen';
  static const String prayerScreen = '/prayerScreen';
  static const String duasScreen = '/duasScreen';
  static const String duaAfterSalahScreen = '/duaAfterSalahScreen';
  static const String provinceScreen = '/provinceScreen';
  static const String masjidDetailScreen = '/masjidDetailScreen';

  static final routes = {
    splash: (context) => const GetStartedScreen(),
    mainHomeScreen: (context) => const MainHomeScreen(),
    quiblaScreen: (context) => const QuiblaScreen(),
    masjidsScreen: (context) => const MasjidsScreen(),
    duasScreen: (context) => const DuasScreen(),
    prayerScreen: (context) => const PrayerScreen(),
    provinceScreen: (context) => const ProvinceScreen(),
    masjidDetailScreen: (context) => const MasjidDetailScreen(),
    duaAfterSalahScreen: (context) => const DuaAfterSalahScreen(),
  };
}
