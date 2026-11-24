import 'package:flutter/widgets.dart';

import '../theme/flutter_colors.dart';
import '../widgets/screen_header.dart';

/// Taller de transiciones (en construcción).
class TransitionsWorkshop extends StatelessWidget {
  const TransitionsWorkshop({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.background,
      child: Column(
        children: <Widget>[
          ScreenHeader(
            title: 'Transiciones',
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
