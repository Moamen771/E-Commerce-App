import 'package:flutter/material.dart';

/// A one‑stop helper for all Navigator patterns.
extension NavigatorHelper on BuildContext {
  /// 1. Push a Widget page onto the stack.
  Future<T?> pushPage<T>(Widget page, {String? routeName, Object? arguments}) {
    return Navigator.of(this).push<T>(
      MaterialPageRoute(
        settings: RouteSettings(name: routeName, arguments: arguments),
        builder: (_) => page,
      ),
    );
  }

  /// 2. Replace current with a Widget page.
  Future<T?> pushReplacementPage<T, TO>(
    Widget page, {
    String? routeName,
    Object? arguments,
    TO? result,
  }) {
    return Navigator.of(this).pushReplacement<T, TO>(
      MaterialPageRoute(
        settings: RouteSettings(name: routeName, arguments: arguments),
        builder: (_) => page,
      ),
      result: result,
    );
  }

  /// 3. Push a Widget page and remove until predicate.
  Future<T?> pushAndRemoveUntilPage<T>(
    Widget page,
    RoutePredicate predicate, {
    String? routeName,
    Object? arguments,
  }) {
    return Navigator.of(this).pushAndRemoveUntil<T>(
      MaterialPageRoute(
        settings: RouteSettings(name: routeName, arguments: arguments),
        builder: (_) => page,
      ),
      predicate,
    );
  }

  /// 4. Push a named route.
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);
  }

  /// 5. Replace with a named route.
  Future<T?> pushReplacementNamed<T, TO>(
    String routeName, {
    Object? arguments,
    TO? result,
  }) {
    return Navigator.of(this).pushReplacementNamed<T, TO>(
      routeName,
      arguments: arguments,
      result: result,
    );
  }

  /// 6. Push named and remove until predicate.
  Future<T?> pushNamedAndRemoveUntil<T>(
    String routeName,
    RoutePredicate predicate, {
    Object? arguments,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil<T>(routeName, predicate, arguments: arguments);
  }

  /// 7. Pop current route.
  void pop<T extends Object?>([T? result]) {
    Navigator.of(this).pop<T>(result);
  }

  /// 8. Pop until a named route is reached.
  void popUntil(String routeName) {
    Navigator.of(this).popUntil(ModalRoute.withName(routeName));
  }

  /// 9. Pop current and push a named.
  Future<T?> popAndPushNamed<T, TO>(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).popAndPushNamed<T, TO>(routeName, arguments: arguments);
  }
}
