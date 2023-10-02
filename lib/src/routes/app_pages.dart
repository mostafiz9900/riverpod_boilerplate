


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../app_pkg.dart';

part 'app_routes.dart';
final _key = GlobalKey<NavigatorState>();
class AppPages {
  AppPages._();
  static const INITIAL = Routes.SPLASH;
}
  final routerProvider = Provider<GoRouter>((ref) {
    // ref.watch(authProvider);
    // final authNotifier = ref.read(authProvider.notifier);
    // static String get routeName => 'splash';
    // static String get routeLocation => '/$routeName';
    return GoRouter(
      navigatorKey: _key,
      debugLogDiagnostics: true,
      initialLocation: _Paths.SPLASH,
      routes: [
        GoRoute(
          path: _Paths.SPLASH,
          // name: SplashPage.routeName,
          builder: (context, state) {
            return const SplashPage();
          },
        ),
        GoRoute(
          path: _Paths.SIGNIN,
          name: _Paths.SIGNIN,
          builder: (context, state) {
            return const SignInPage();
          },
        ),
        GoRoute(
          path: _Paths.SIGNUP,
          name:  _Paths.SIGNUP,
          builder: (context, state) {
            return const SignInPage();
          },
        ),
      ],
      redirect: (context, state) {
        // print(state);
        // print('router redirect call ');
        // // If our async state is loading, don't perform redirects, yet
        // if (authNotifier.isLoading) return null;
        //
        // final isAuth = authNotifier.isAuthenticated;
        //
        // final isSplash = state.location == SplashPage.routeLocation;
        // if (isSplash) {
        //   return isAuth ? HomePage.routeLocation : LoginPage.routeLocation;
        // }
        //
        // final isLoggingIn = state.location == LoginPage.routeLocation;
        // if (isLoggingIn) return isAuth ? HomePage.routeLocation : null;
        //
        // return isAuth ? null : SplashPage.routeLocation;
      },
    );
  });

