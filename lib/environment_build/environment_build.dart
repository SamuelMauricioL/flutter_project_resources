import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_project_resources/environment_build/env.dart';

class EnvironmentConfig {
  static const envParam = String.fromEnvironment('ENV');

  static Future<void> init() async {
    await dotenv.load(fileName: getVarsEnvironment(envParam).fileName);
  }

  static Future<void> inite2e() async {
    await dotenv.load(fileName: Env.local.fileName);
  }

  static Env getVarsEnvironment(String env) {
    return Env.values
        .firstWhere((element) => element.name == env, orElse: () => Env.dev);
  }
}
