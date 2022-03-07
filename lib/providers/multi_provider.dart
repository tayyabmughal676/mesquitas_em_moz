import 'package:mesquitas_em_moz/screens/main_home_screens/duas_screens/duas_provider.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/main_home_provider.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/masjids_screens/masjid_detail_screens/masjid_detail_provider.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/masjids_screens/masjids_provider.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/prayer_screens/prayer_provider.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/province_screens/province_provider.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/quibla_screens/quibla_provider.dart';
import 'package:provider/provider.dart';

import '../screens/get_started_screens/get_started_provider.dart';

final multiProviders = [
  ChangeNotifierProvider<GetStartedProvider>(
    create: (_) => GetStartedProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<MainHomeProvider>(
    create: (_) => MainHomeProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<DuasProvider>(
    create: (_) => DuasProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<QuiblaProvider>(
    create: (_) => QuiblaProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<PrayerProvider>(
    create: (_) => PrayerProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<MasjidsProvider>(
    create: (_) => MasjidsProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<ProvinceProvider>(
    create: (_) => ProvinceProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<MasjidDetailProvider>(
    create: (_) => MasjidDetailProvider(),
    lazy: true,
  ),
];
