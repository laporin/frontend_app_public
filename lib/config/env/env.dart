import 'package:envify/envify.dart';
import 'package:flutter/foundation.dart';

part 'env.g.dart';

@Envify(path: kReleaseMode ? '.env.production' : '.env.development')
abstract class Env {
  static const String key = _Env.key;
  static const String environment = _Env.environment;
  static const String backendUrl = _Env.backendUrl;
  static const String backendAiUrl = _Env.backendAiUrl;
  static const bool isStudent = _Env.isStudent;
}
