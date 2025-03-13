import 'package:cloud_text_to_speech/src/common/http/base_header.dart';


///Base class that all authentications types must implement.
abstract class AuthenticationHeaderGoogle extends BaseHeader {
  AuthenticationHeaderGoogle({required String type, required String value})
      : super(type: type, value: value);
}

///Authentication using X-goog-api-key header type
class ApiKeyAuthenticationHeaderGoogle extends AuthenticationHeaderGoogle {
  ApiKeyAuthenticationHeaderGoogle({required String apiKey})
      : super(type: "X-goog-api-key", value: apiKey);

  @override
  String get headerValue => value;
}

///Authentication using X-App-Identifier header type
class AppIdentifierAuthenticationHeaderGoogle extends AuthenticationHeaderGoogle {
  AppIdentifierAuthenticationHeaderGoogle({required String appIdentifier})
      : super(type: "X-App-Identifier", value: appIdentifier);

  @override
  String get headerValue => value;
}

