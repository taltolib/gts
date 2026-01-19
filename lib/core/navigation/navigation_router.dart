import 'package:go_router/go_router.dart';
import 'package:gts/features/auth/presentation/pages/login_page.dart';
import 'package:gts/features/search/presentation/pages/travel_search_page.dart';

GoRouter route() {
  return GoRouter(
    initialLocation: '/',
      routes: [
        GoRoute(path: '/',builder: (context, state) => LoginPage(),),
        GoRoute(path: '/home',builder: (context, state) => TravelSearchPage(),),
      ]
  );
}

