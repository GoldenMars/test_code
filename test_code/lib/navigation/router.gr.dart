// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:test_code/features/enter_password_screen/enter_password_screen.dart'
    as _i1;
import 'package:test_code/features/enter_sim_id_screen/enter_sim_id_screen.dart'
    as _i2;

/// generated route for
/// [_i1.EnterPasswordScreen]
class EnterPasswordRoute extends _i3.PageRouteInfo<void> {
  const EnterPasswordRoute({List<_i3.PageRouteInfo>? children})
      : super(
          EnterPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterPasswordRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.EnterPasswordScreen();
    },
  );
}

/// generated route for
/// [_i2.EnterSimIdScreen]
class EnterSimIdRoute extends _i3.PageRouteInfo<void> {
  const EnterSimIdRoute({List<_i3.PageRouteInfo>? children})
      : super(
          EnterSimIdRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterSimIdRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.EnterSimIdScreen();
    },
  );
}
