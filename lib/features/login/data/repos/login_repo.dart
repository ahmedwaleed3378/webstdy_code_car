import 'package:advanced_omar_ahmed/core/networking/api_result.dart';
import 'package:advanced_omar_ahmed/core/networking/api_service.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';

class LoginRepo {
  final ApiService apiService;
  LoginRepo(this.apiService);

  Future<ApiResult<LoginResponse>> login(
      {required LoginRequestBody loginRequestBody}) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error.toString()));
    }
  }
}
