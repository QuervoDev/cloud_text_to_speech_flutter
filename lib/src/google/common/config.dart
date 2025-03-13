///Holds all configurations
class ConfigGoogle {
  static late final String _apiKey;
  static late final String? _projectId;
  static late final String? _appId;

  ConfigGoogle._();

  static void init({required String apiKey, String? projectId, String? appId}) {
    _apiKey = apiKey;
    _projectId = projectId;
    _appId = appId;
  }

  static String get apiKey {
    if (ConfigGoogle._apiKey.isEmpty) {
      throw Exception("Google API Key is not initialized");
    }
    return ConfigGoogle._apiKey;
  }

  static String? get projectId {
    return ConfigGoogle._projectId;
  }

  static String? get appId {
    return ConfigGoogle._appId;
  }
}
