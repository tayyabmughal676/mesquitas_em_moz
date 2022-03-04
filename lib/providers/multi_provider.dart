import 'package:provider/provider.dart';

import '../screens/get_started_screens/get_started_provider.dart';

final multiProviders = [
  ChangeNotifierProvider<GetStartedProvider>(
    create: (_) => GetStartedProvider(),
    lazy: true,
  ),
];
