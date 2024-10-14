import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/assets/assets.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../movie/presentation/pages/trending_movies.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SvgPicture.asset(AppVectors.logo),
        ),
        hideBack: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TrendingMovies(),
          ],
        ),
      ),
    );
  }
}
