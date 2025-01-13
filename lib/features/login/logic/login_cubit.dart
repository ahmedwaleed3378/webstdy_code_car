
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_car/features/login/data/repos/login_repo.dart';

import '../data/models/login_request_body.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> login( {required LoginRequestBody loginRequestBody}) async {
    emit(const LoginState.loading());
    final response = await loginRepo.login(
        loginRequestBody: loginRequestBody);
    response.when(success: (success) {
      emit(LoginState.success(success));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.toString()));
    });
  }
}
