import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/widgets/background_circulo.dart';
import 'package:flutter_application_1/src/widgets/background_seta.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

class _LoginPageState extends State<LoginPage>{
  final controller = LoginController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
}
  @override
  void initState(){
    super.initState();
    controller.addListener(_refresh);
  }

  void_refresh(){
    if(mounted) setState(({}))
  }
//metodo dispose

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeafaf1),
      body: Stack(
        children: [
          const Positioned(
            right: -180,
            bottom: -240,
            child: BackgroundSeta(),

          ),
          const Positioned(
            right: -180,
            bottom: -240,
            child: BackgroundCirculo(),
          ),
          Center(
            child: Container(
              width: 30,
              height: 620,
              padding: const EdgeInsets.symmetric(
                horizontal: 46
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.20),
                    blurRadius: 35,
                    offset: Offset(0, 18)
                  )
                ]
              ),
            ),
          ),
          Column(
            children: [
              Text("Aproveite para Ouvir Música"),

            ],
          )
        ],
      ),
    );
  }
}