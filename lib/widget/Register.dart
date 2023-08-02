import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController fullnameC = TextEditingController();
  final TextEditingController userC = TextEditingController();
  final TextEditingController psw1C = TextEditingController();
  final TextEditingController psw2C = TextEditingController();
  final TextEditingController numberC = TextEditingController();
  final TextEditingController email1C = TextEditingController();
  final TextEditingController email2C = TextEditingController();
  late bool hide1;
  late bool hide2;

  @override
  void initState() {
    hide1=true;
    hide2=true;
    super.initState();
    
  }
  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10), ),
        child: SizedBox(
          width: size.width*0.6,
          height: size.height*0.8,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Registrase",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold),
                ),
                
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Correo",style: TextStyle(fontSize: 20, color: Colors.black),),
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
                    
                    SizedBox(height: 10,),
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
                        hintText: 'Ingresa tu correo nuevamente',
                        hintStyle: TextStyle(color: Color.fromARGB(255, 30, 30, 30)),
                       ),
                    ),
                  ],
                ),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Constaseña",style: TextStyle(fontSize: 20, color: Colors.black),)
                    ,
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
                    SizedBox(height: 10,),
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
                              hintText: 'Ingresa tu contraseña nuevamente',
                              hintStyle: TextStyle(color: Color.fromARGB(255, 30, 30, 30)),
                            ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                SizedBox(width:size.width*0.5 ,
                  child:
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: null,
                    child: Text('REGISTRASE',style: TextStyle(color: Colors.white),),
                  )
                )
                
              
              ],
            ),
          ),
        ),
    );
  }  
}