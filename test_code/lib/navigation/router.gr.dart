// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:test_code/features/enter_sim_id_screen/enter_sim_id_screen.dart'
    as _i1;

/// generated route for
/// [_i1.EnterSimIdScreen]
class EnterSimIdRoute extends _i2.PageRouteInfo<EnterSimIdRouteArgs> {
  EnterSimIdRoute({
    _i3.Key? key,
    List<_i2.PageRouteInfo>? children,
  }) : super(
          EnterSimIdRoute.name,
          args: EnterSimIdRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterSimIdRoute';

  static _i2.PageInfo page = _i2.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EnterSimIdRouteArgs>(
          orElse: () => const EnterSimIdRouteArgs());
      return _i1.EnterSimIdScreen(key: args.key);
    },
  );
}

class EnterSimIdRouteArgs {
  const EnterSimIdRouteArgs({this.key});

  final _i3.Key? key;

  @override
  String toString() {
    return 'EnterSimIdRouteArgs{key: $key}';
  }
}
