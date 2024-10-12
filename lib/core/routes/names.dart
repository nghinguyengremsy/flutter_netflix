library route_names;

enum RouteName {
  home("/home"),
  auth("/auth"),
  splash("/splash");

  const RouteName(this.route);

  final String route;
}
