import 'package:flutter/widgets.dart';

import '../models/workshop.dart';
import '../screens/animations_workshop.dart';
import '../screens/interactions_workshop.dart';
import '../screens/transitions_workshop.dart';
import '../theme/flutter_colors.dart';

/// Catálogo de talleres disponibles.
///
/// Agrega aquí un nuevo [Workshop] y aparecerá automáticamente en la grilla
/// de la pantalla de inicio. Recuerda crear su pantalla y mapearla en
/// [workshopScreenFor].
const List<Workshop> workshops = <Workshop>[
  Workshop(
    id: 'animations',
    title: 'Animaciones',
    subtitle: 'Tweens, controladores e implicit vs explicit',
    color: AppColors.flutterMedium,
  ),
  Workshop(
    id: 'transitions',
    title: 'Transiciones',
    subtitle: 'PageRoute, fades y deslizamientos',
    color: AppColors.flutterLight,
  ),
  Workshop(
    id: 'interactions',
    title: 'Interacciones',
    subtitle: 'Gestos, taps y arrastres',
    color: AppColors.flutterDark,
  ),
];

/// Devuelve la pantalla asociada a un taller.
Widget workshopScreenFor(Workshop workshop) {
  switch (workshop.id) {
    case 'animations':
      return const AnimationsWorkshop();
    case 'transitions':
      return const TransitionsWorkshop();
    case 'interactions':
      return const InteractionsWorkshop();
    default:
      throw ArgumentError.value(
        workshop.id,
        'workshop.id',
        'Taller desconocido',
      );
  }
}
