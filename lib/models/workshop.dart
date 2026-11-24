import 'package:flutter/widgets.dart';

/// Un taller de aprendizaje dentro de la app.
///
/// Solo contiene datos: la pantalla asociada se resuelve en
/// [data/workshops.dart] para mantener el modelo desacoplado de las vistas.
class Workshop {
  const Workshop({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  final String id;
  final String title;
  final String subtitle;
  final Color color;
}
