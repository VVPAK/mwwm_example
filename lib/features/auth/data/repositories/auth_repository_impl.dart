import 'package:mwwm_example/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:mwwm_example/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:mwwm_example/features/auth/domain/entities/auth_data.dart';
import 'package:mwwm_example/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  late AuthData _cachedAuthData;

  // String get accessToken => _cachedAuthData.accessToken;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<AuthData> authenticate({
    required String login,
    required String password,
  }) async {
    var authData = remoteDataSource.authenticate(
      login: login,
      password: password,
    );

    _cachedAuthData = await authData;

    return authData;
  }
}