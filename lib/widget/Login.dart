import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController userC = TextEditingController();
  final TextEditingController pswC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10), ),
        child: SizedBox(
          width: size.width*0.6,
          height: size.height*0.6,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Ingresar",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold),
                ),
                TextField(
                  //controller: userC,
                  style: TextStyle(color: Colors.purple),
                    
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      fillColor: Color.fromARGB(255, 246, 198, 255),
                          filled: true,
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Color.fromARGB(255, 30, 30, 30),
                    ),
                    hintText: 'Ingresa tu correo',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 30, 30, 30)),
                   ),
                ),
                TextField(
                  style: TextStyle(color: Colors.purple),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 246, 198, 255),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 30, 30, 30),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          hintText: 'Ingresa tu contraseña',
                          hintStyle: TextStyle(color: Color.fromARGB(255, 30, 30, 30)),
                        ),
                ),
                SizedBox(width:size.width*0.5 ,
                  child:
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: null,
                    child: Text('INGRESAR',style: TextStyle(color: Colors.white),),
                  )
                )
                
              
              ],
            ),
          ),
        ),
    );
  }
}