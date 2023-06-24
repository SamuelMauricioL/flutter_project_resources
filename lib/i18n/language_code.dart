enum LanguageCode { spanish, english }

extension Ext on LanguageCode {
  String get code {
    return [
      'es_ES',
      'en_US',
    ][index];
  }
}
