import 'package:flutter/widgets.dart';

/// Crea una [PageRoute] con la transición de la app (fade + slide).
///
/// Se usa como [WidgetsApp.pageRouteBuilder], que requiere este formato:
/// recibe [RouteSettings] y un [WidgetBuilder], y devuelve la [PageRoute].
/// WidgetsApp no define una transición por defecto (a diferencia de
/// MaterialApp), por eso se la pasamos explícitamente.
PageRoute<T> buildAppPageRoute<T>(
  RouteSettings settings,
  WidgetBuilder builder,
) {
  return PageRouteBuilder<T>(
    settings: settings,
    transitionDuration: const Duration(milliseconds: 320),
    reverseTransitionDuration: const Duration(milliseconds: 240),
    pageBuilder: (context, animation, secondaryAnimation) => builder(context),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final CurvedAnimation curved = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutCubic,
        reverseCurve: Curves.easeInCubic,
      );
      return FadeTransition(
        opacity: curved,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 0.05),
            end: Offset.zero,
          ).animate(curved),
          child: child,
        ),
      );
    },
  );
}

/// Ruta explícita para `Navigator.push`.
Route<T> appPageRoute<T extends Object?>(Widget page) {
  return buildAppPageRoute<T>(const RouteSettings(), (context) => page);
}
