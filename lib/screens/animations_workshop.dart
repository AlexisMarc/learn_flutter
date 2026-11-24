import 'package:flutter/widgets.dart';

import '../theme/flutter_colors.dart';
import '../widgets/screen_header.dart';

/// Taller de animaciones (en construcción).
class AnimationsWorkshop extends StatelessWidget {
  const AnimationsWorkshop({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.background,
      child: Column(
        children: <Widget>[
          ScreenHeader(
            title: 'Animaciones',
            onBack: () => Navigator.of(context).pop(),
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Contenido del taller próximamente',
                style: TextStyle(color: AppColors.textSecondary, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
