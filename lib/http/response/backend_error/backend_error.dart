class BackendError {
  String? field;
  String? message;
  String? errorType;
  String? references;

  BackendError({this.field, this.message, this.errorType, this.references});

  factory BackendError.fromJson(Map<String, dynamic> json) => BackendError(
      field: json['field'],
      message: json['message'],
      errorType: json['errorType'],
      references: json['references']);
}
