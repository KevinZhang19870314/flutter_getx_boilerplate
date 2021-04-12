import 'dart:convert';

class ErrorResponse {
  ErrorResponse({
    required this.error,
  });

  String error;

  factory ErrorResponse.fromRawJson(String str) =>
      ErrorResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => ErrorResponse(
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "error": error,
      };
}
