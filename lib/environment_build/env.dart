enum Env {
  local('.env.local'),
  dev('.env.dev'),
  stage('.env.staging'),
  prod('.env.prod');

  const Env(this.fileName);
  final String fileName;
}
