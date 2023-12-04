import 'package:go_router/go_router.dart';

import '../../presentation/screens/home_page.dart';
import '../../presentation/screens/other_routes.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    // Home Page ==========================================
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
    ),
    // ROUTE WITH PARAMETERS =============================
    GoRoute(
      path: "/favorite/:id",
      builder: (context, state) =>
          FavoritePage(id: state.pathParameters['id']!),
    ),
    // OTHER ROUTES =======================================
    GoRoute(
      path: "/settings",
      builder: (context, state) => const SettingsPage(),
    ),
  ],
);
