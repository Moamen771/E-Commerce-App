import 'package:flutter/material.dart';

/// A set of handy Navigator extensions on BuildContext
/// to simplify navigation calls and keep widget code clean.
extension NavigatorHelper on BuildContext {
  /// Pushes a new route onto the navigator stack.
  Future<T?> push<T>(Widget page) =>
      Navigator.of(this).push<T>(MaterialPageRoute(builder: (_) => page));

  /// Pushes a route and removes the current one.
  Future<T?> pushReplacement<T, TO extends Object?>(
    Widget page, {
    TO? result,
  }) => Navigator.of(this).pushReplacement<T, TO>(
    MaterialPageRoute(builder: (_) => page),
    result: result,
  );

  /// Pushes a route and removes all previous routes until the predicate returns true.
  Future<T?> pushAndRemoveUntil<T>(Widget page, RoutePredicate predicate) =>
      Navigator.of(this).pushAndRemoveUntil<T>(
        MaterialPageRoute(builder: (_) => page),
        predicate,
      );

  /// Pushes a named route onto the navigator stack.
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);

  /// Pushes a named route and removes the current one.
  Future<T?> pushReplacementNamed<T, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) => Navigator.of(this).pushReplacementNamed<T, TO>(
    routeName,
    result: result,
    arguments: arguments,
  );

  /// Pushes a named route and removes all previous routes until the predicate returns true.
  Future<T?> pushNamedAndRemoveUntil<T>(
    String routeName,
    RoutePredicate predicate, {
    Object? arguments,
  }) => Navigator.of(
    this,
  ).pushNamedAndRemoveUntil<T>(routeName, predicate, arguments: arguments);

  /// Pops the top-most route off the navigator.
  void pop<T extends Object?>([T? result]) => Navigator.of(this).pop<T>(result);

  /// Pops routes until the predicate returns true.
  void popUntil(RoutePredicate predicate) =>
      Navigator.of(this).popUntil(predicate);

  /// Pops all routes off the navigator.
  void popAll() => Navigator.of(this).popUntil((route) => route.isFirst);
}
