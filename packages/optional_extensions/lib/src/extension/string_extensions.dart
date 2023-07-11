// ignore_for_file: public_member_api_docs

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
