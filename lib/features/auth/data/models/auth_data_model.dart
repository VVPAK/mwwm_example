import 'package:mwwm_example/features/auth/domain/entities/auth_data.dart';

class AuthDataModel extends AuthData {
  AuthDataModel({
    required String accessToken,
  }) : super(accessToken: accessToken);

  factory AuthDataModel.fromJson(Map<String, dynamic> json) {
    return AuthDataModel(accessToken: json['accessToken'] as String);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accessToken'] = this.accessToken;
    return data;
  }
}
