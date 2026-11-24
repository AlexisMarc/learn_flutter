import 'package:flutter/widgets.dart';

import '../data/workshops.dart';
import '../models/workshop.dart';
import '../routes/app_page_route.dart';
import '../theme/flutter_colors.dart';
import '../widgets/workshop_card.dart';

/// Pantalla de inicio: grilla de talleres con entrada escalonada.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _openWorkshop(Workshop workshop) {
    Navigator.of(context).push<void>(appPageRoute(workshopScreenFor(workshop)));
  }

  Widget _buildCard(int index) {
    final Workshop workshop = workshops[index];
    final CurvedAnimation entrance = CurvedAnimation(
      parent: _controller,
      curve: Interval(index * 0.08, 1.0, curve: Curves.easeOutCubic),
    );
    return FadeTransition(
      opacity: entrance,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 0.15),
          end: Offset.zero,
        ).animate(entrance),
        child: WorkshopCard(
          index: index,
          title: workshop.title,
          subtitle: workshop.subtitle,
          color: workshop.color,
          onTap: () => _openWorkshop(workshop),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.background,
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 24, 24, 8),
              child: Text(
                'Talleres Flutter',
                style: TextStyle(
                  color: AppColors.flutterDark,
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Animaciones, transiciones e interacciones mobile.',
                style: TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
            ),
            Expanded(
              child: GridView.extent(
                padding: const EdgeInsets.all(24),
                maxCrossAxisExtent: 220,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.9,
                children: <Widget>[
                  for (int i = 0; i < workshops.length; i++) _buildCard(i),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
