class BaseResponse {
  String message;
  int statusCode;
  List<dynamic> data;

  BaseResponse({required this.message, required this.statusCode,required this.data});

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(
      message: json['message'],
      statusCode: json['statusCode'],
      data: json['data'] as List<dynamic>,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'statusCode': statusCode,
      'data': data,
    };
  }
}
