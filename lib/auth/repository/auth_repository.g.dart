// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authRepositoryHash() => r'6c4487ce93cb6aaeec4b260cadaae59724a2f493';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$authRepository
    extends BuildlessAutoDisposeAsyncNotifier<LoginEntity?> {
  late final String email;
  late final String password;

  FutureOr<LoginEntity?> build({
    required String email,
    required String password,
  });
}

/// See also [authRepository].
@ProviderFor(authRepository)
const authRepositoryProvider = AuthRepositoryFamily();

/// See also [authRepository].
class AuthRepositoryFamily extends Family<AsyncValue<LoginEntity?>> {
  /// See also [authRepository].
  const AuthRepositoryFamily();

  /// See also [authRepository].
  AuthRepositoryProvider call({
    required String email,
    required String password,
  }) {
    return AuthRepositoryProvider(
      email: email,
      password: password,
    );
  }

  @override
  AuthRepositoryProvider getProviderOverride(
    covariant AuthRepositoryProvider provider,
  ) {
    return call(
      email: provider.email,
      password: provider.password,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'authRepositoryProvider';
}

/// See also [authRepository].
class AuthRepositoryProvider
    extends AutoDisposeAsyncNotifierProviderImpl<authRepository, LoginEntity?> {
  /// See also [authRepository].
  AuthRepositoryProvider({
    required String email,
    required String password,
  }) : this._internal(
          () => authRepository()
            ..email = email
            ..password = password,
          from: authRepositoryProvider,
          name: r'authRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authRepositoryHash,
          dependencies: AuthRepositoryFamily._dependencies,
          allTransitiveDependencies:
              AuthRepositoryFamily._allTransitiveDependencies,
          email: email,
          password: password,
        );

  AuthRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.email,
    required this.password,
  }) : super.internal();

  final String email;
  final String password;

  @override
  FutureOr<LoginEntity?> runNotifierBuild(
    covariant authRepository notifier,
  ) {
    return notifier.build(
      email: email,
      password: password,
    );
  }

  @override
  Override overrideWith(authRepository Function() create) {
    return ProviderOverride(
      origin: this,
      override: AuthRepositoryProvider._internal(
        () => create()
          ..email = email
          ..password = password,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        email: email,
        password: password,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<authRepository, LoginEntity?>
      createElement() {
    return _AuthRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthRepositoryProvider &&
        other.email == email &&
        other.password == password;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AuthRepositoryRef on AutoDisposeAsyncNotifierProviderRef<LoginEntity?> {
  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `password` of this provider.
  String get password;
}

class _AuthRepositoryProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<authRepository,
        LoginEntity?> with AuthRepositoryRef {
  _AuthRepositoryProviderElement(super.provider);

  @override
  String get email => (origin as AuthRepositoryProvider).email;
  @override
  String get password => (origin as AuthRepositoryProvider).password;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
