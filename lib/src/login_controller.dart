//Classe controller
import "package:flutter/material.dart";
import "package:flutter_application_1/src/auth/controller/model/login_model.dart";





class LoginController extends ChangeNotifier{

  bool rememberME = false;
  bool isLoading = false;
  String? error;

  void ativarDesativarRememberMe(bool value){
    rememberME = value;
    notifyListeners();
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async{
    isLoading = true;
    error = null;
    notifyListeners();

    final model = LoginModel(
      email: email,
      password: password,
      rememberME: rememberME
      
    );

    await Future.delayed(const Duration(seconds: 1));

    if(!model.isValid){
      error = 'Informe o seu email e sua senha com no mínimo 8 caracteres';
      isLoading = false;
      notifyListeners();
      return false;
    }

    isLoading = false;
    notifyListeners();
    return true;

  }

}