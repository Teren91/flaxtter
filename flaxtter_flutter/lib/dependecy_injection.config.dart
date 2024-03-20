// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flaxtter_client/flaxtter_client.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart'
    as _i4;

import 'flaxtter_client.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final flaxtterClientModule = _$FlaxtterClientModule();
    gh.factory<_i3.Client>(() => flaxtterClientModule.client);
    gh.factoryAsync<_i4.SessionManager>(
        () => flaxtterClientModule.sessionManager);
    return this;
  }
}

class _$FlaxtterClientModule extends _i5.FlaxtterClientModule {}
