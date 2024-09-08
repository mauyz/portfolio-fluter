// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_menu.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedMenuHash() => r'ac2db46c50751015a82db2194bf9b14ebb7603b9';

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

abstract class _$SelectedMenu extends BuildlessNotifier<Menu> {
  late final BuildContext context;

  Menu build(
    BuildContext context,
  );
}

/// See also [SelectedMenu].
@ProviderFor(SelectedMenu)
const selectedMenuProvider = SelectedMenuFamily();

/// See also [SelectedMenu].
class SelectedMenuFamily extends Family<Menu> {
  /// See also [SelectedMenu].
  const SelectedMenuFamily();

  /// See also [SelectedMenu].
  SelectedMenuProvider call(
    BuildContext context,
  ) {
    return SelectedMenuProvider(
      context,
    );
  }

  @override
  SelectedMenuProvider getProviderOverride(
    covariant SelectedMenuProvider provider,
  ) {
    return call(
      provider.context,
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
  String? get name => r'selectedMenuProvider';
}

/// See also [SelectedMenu].
class SelectedMenuProvider extends NotifierProviderImpl<SelectedMenu, Menu> {
  /// See also [SelectedMenu].
  SelectedMenuProvider(
    BuildContext context,
  ) : this._internal(
          () => SelectedMenu()..context = context,
          from: selectedMenuProvider,
          name: r'selectedMenuProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectedMenuHash,
          dependencies: SelectedMenuFamily._dependencies,
          allTransitiveDependencies:
              SelectedMenuFamily._allTransitiveDependencies,
          context: context,
        );

  SelectedMenuProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
  }) : super.internal();

  final BuildContext context;

  @override
  Menu runNotifierBuild(
    covariant SelectedMenu notifier,
  ) {
    return notifier.build(
      context,
    );
  }

  @override
  Override overrideWith(SelectedMenu Function() create) {
    return ProviderOverride(
      origin: this,
      override: SelectedMenuProvider._internal(
        () => create()..context = context,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
      ),
    );
  }

  @override
  NotifierProviderElement<SelectedMenu, Menu> createElement() {
    return _SelectedMenuProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedMenuProvider && other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SelectedMenuRef on NotifierProviderRef<Menu> {
  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _SelectedMenuProviderElement
    extends NotifierProviderElement<SelectedMenu, Menu> with SelectedMenuRef {
  _SelectedMenuProviderElement(super.provider);

  @override
  BuildContext get context => (origin as SelectedMenuProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
