import 'package:go_router/go_router.dart';
import 'package:shop/core/utils/constance.dart';
import 'package:shop/features/authorization/presentation/views/login_view.dart';
import 'package:shop/features/home_feature/presentation/views/root_view.dart';
import 'package:shop/features/home_feature/presentation/views/viewed_recently.dart';
import 'package:shop/features/home_feature/presentation/views/wish_list_view.dart';
import 'package:shop/features/home_feature/presentation/widgets/product_details.dart';

abstract class AppRouterConfig {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kloginRouter,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kHomeRouter,
        builder: (context, state) => const RootView(),
      ),
      GoRoute(
        path: kProductDeatialRouter,
        builder: (context, state) => const ProductDetails(),
      ),
      GoRoute(
        path: kWishListViewRouter,
        builder: (context, state) => const WishListView(),
      ),
      GoRoute(
        path: kViewedRecentlyViewRouter,
        builder: (context, state) => const ViewedRecently(),
      )
    ],
  );
}
