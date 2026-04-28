//Orientação Objeto
//Classe - atributos - metodos
//Classe modelo

class LoginModel{

//Atributos
  final String email;
  final String password;
  final bool rememberME;

  //Toda classe tem um contrutor

  const LoginModel ({
    required this.email,
    required this.password,
    required this.rememberME,

  });

  bool get isValid{
    return email.trim().isEmpty && password.trim().length >= 8;
  }

  

}