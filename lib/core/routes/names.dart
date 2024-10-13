library route_names;

enum RouteName {
  home("/home"),
  signin("/signin"),
  signup("/signup"),

  splash("/splash");

  const RouteName(this.route);

  final String route;
}
