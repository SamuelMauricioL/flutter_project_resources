extension StringExtension on String? {
  String ifPresentOrEmpty() {
    return this ?? '';
  }

  String ifPresentOrCustom(String customValue) {
    return this ?? customValue;
  }

  bool isBlank() {
    return !isNotBlank();
  }

  bool isNotBlank() {
    return this != null && this!.isNotEmpty;
  }
}
