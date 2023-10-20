import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shopping_provider_app/screens/cart.dart';
import 'package:shopping_provider_app/screens/catalog.dart';
import 'package:shopping_provider_app/screens/login.dart';

import 'common/theme.dart';

void main() {
  runApp(MyApp());
}

GoRouter router() {
  return GoRouter(initialLocation: '/login', routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => MyLogin(),
    ),
    GoRoute(path: '/catalog', builder: (context, state) => MyCatalog()),
    GoRoute(path: '/cart', builder: (context, state) => MyCart())
  ]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * The benefit of using multiprovider is to
     * have a convience of proving multiple objects
     * */
    return MultiProvider(
      providers: [],
      child: MaterialApp.router(
        title: 'Shopping App',
        theme: appTheme,
        routerConfig: router(),
      ),
    );
  }
}
