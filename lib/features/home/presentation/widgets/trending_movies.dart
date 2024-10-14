part of widgets;

class TrendingMovies extends StatefulWidget {
  const TrendingMovies({super.key});

  @override
  State<TrendingMovies> createState() => _TrendingMoviesState();
}

class _TrendingMoviesState extends State<TrendingMovies> {
  final cubit = TrendingMoviesCubit();

  @override
  void initState() {
    super.initState();
    cubit.getTrendingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: BlocBuilder<TrendingMoviesCubit, TrendingMoviesState>(
        builder: (context, state) {
          if (state is TrendingMoviesLoading) {
            return const SizedBox();
          }
          if (state is TrendingMoviesLoaded) {
            return FanCarouselImageSlider.sliderType1(
              imagesLink: state.movies
                  .map((e) =>
                      "${AppImages.moviesImageBasePath}/${e.posterPath ?? ''}")
                  .toList(),
              isAssets: false,
              autoPlay: false,
              sliderHeight: 400,
              showIndicator: true,
            );
          }
          if (state is FailureLoadTrendingMovies) {
            return Text(state.errorMessage);
          }
          return const SizedBox();
        },
      ),
    );
  }
}
