class ApiResponseModel<T> {
  final T data;
  final String? statusMessage;

  //método construtor
  ApiResponseModel({
    required this.data,
    required this.statusMessage,
  });
}
