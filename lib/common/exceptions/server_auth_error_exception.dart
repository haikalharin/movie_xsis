import 'package:base_app_new/common/exceptions/server_exception.dart';


import '../constants/exception_constants.dart';

class FirebaseAuthErrorException extends BaseException {
  FirebaseAuthErrorException(Map<String, dynamic> error)
      : super(
          message: error['message'],
          code: 200,
          errors: <ErrorList>[],
        );
}
