extension MapExtesion on Map {
  List<T>? toListFromMap<T>(
      String key, T Function(Map<String, dynamic>) fromJson) {
    return this[key] == null
        ? null
        : List.from(this[key]).map((e) => fromJson(e)).toList();
  }

  List<T>? toListFrom<T>(String key) {
    return this[key] == null ? null : List<T>.from(this[key]);
  }

  T? toEntityFromMap<T>(String key, T Function(Map<String, dynamic>) fromJson) {
    return this[key] == null ? null : fromJson(this[key]);
  }
}
