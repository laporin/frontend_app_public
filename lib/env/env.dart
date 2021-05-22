import 'package:envify/envify.dart';
import 'package:flutter/foundation.dart';

part 'env.g.dart';

@Envify(path: kReleaseMode ? '.env.production' : '.env.development')
abstract class Env {
  static const String key = _Env.key;
  static const String keyu = _Env.keyu;
  static const String backendUrl = _Env.backendUrl;
  static const bool isStudent = _Env.isStudent;
}
