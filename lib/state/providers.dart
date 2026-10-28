import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_state.dart';

final appStateProvider = ChangeNotifierProvider<AppState>((ref) => AppState());
