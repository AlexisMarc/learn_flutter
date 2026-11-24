import 'package:flutter/widgets.dart';

import 'routes/app_page_route.dart';
import 'screens/home_screen.dart';
import 'theme/flutter_colors.dart';

void main() {
  runApp(const FlutterWorkshopsApp());
}

/// Raíz de la aplicación.
///
/// Usamos [WidgetsApp] (capa base, sin Material ni Cupertino) para construir
/// un design system propio con los colores de Flutter.
class FlutterWorkshopsApp extends StatelessWidget {
  const FlutterWorkshopsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      title: 'Talleres Flutter',
      color: AppColors.flutterDark,
      debugShowCheckedModeBanner: false,
      pageRouteBuilder: buildAppPageRoute,
      builder: (BuildContext context, Widget? child) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: child ?? const SizedBox.shrink(),
        );
      },
      home: const HomeScreen(),
    );
  }
}
