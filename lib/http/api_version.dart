enum ApiVersion {
  v1('/api/v1/'),
  v2('/api/v2/');

  const ApiVersion(this.prefix);
  final String prefix;
}
