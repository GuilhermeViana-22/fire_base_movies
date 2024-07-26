class ErrorsConst {
  static final ErrorsConst _singleton = ErrorsConst._internal();

  factory ErrorsConst() {
    return _singleton;
  }

  ErrorsConst._internal();

  static const API_DEFAULT_ERROR =
      'Algo deu errado, por favor tente novamente mais tarde';
}
