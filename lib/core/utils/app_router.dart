import 'package:go_router/go_router.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/book_details_view.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/home_view.dart';
import 'package:mvvm_practise/Features/Search/Presentation/Views/search_view.dart';
import 'package:mvvm_practise/Features/Splash/Presentation/Views/splash_view.dart';

abstract class AppRouter {
  static const KHomeView = '/homeView';
  static const KBookDetails = '/bookDetailsView';
  static const KSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}

//Abstract class that have all router
//All Routes are here
// And if you want to go for all routes and see them , you can look for them in appRouter
// If you know web you will find that / is the initial route for the application