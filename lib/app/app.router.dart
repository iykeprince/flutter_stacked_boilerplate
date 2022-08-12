// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../pages/launcher/launcher_view.dart';

class Routes {
  static const String launcherView = '/';
  static const all = <String>{
    launcherView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.launcherView, page: LauncherView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    LauncherView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LauncherView(),
        settings: data,
      );
    },
  };
}
