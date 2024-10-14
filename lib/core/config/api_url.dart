part of config;

class ApiUrl {
  static const baseUrl =
      "https://netflix-backend-production-8413.up.railway.app/";
  static const apiV = "api/v1";
  static const signUp = "$apiV/auth/signup";
  static const signIn = "$apiV/auth/signin";

  static const trendingMovies = "$apiV/movie/trending";
}
