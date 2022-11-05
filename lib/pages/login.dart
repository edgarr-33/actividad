import 'package:flutter/material.dart';

import '../resource/colors.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
  
}

class _LoginState extends State<Login> {
  bool mostrar = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
              padding: EdgeInsets.only(top: 20),
              width: size.width,
              height: size.height * 0.25,
              decoration: const BoxDecoration(
                color: ColorSelect.blueFont,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only (
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                ),
              ),
              child: Image.asset('assets/images/programador.png', scale: size.height * 0.0025),
            ),
            Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.08)),
            Column(
              children: const [
                Text("Bienvenido a", style: TextStyle(fontSize: 25, color: ColorSelect.blueFont)),
                Text("MI APP", style: TextStyle(fontSize: 30, color: ColorSelect.dorado, fontWeight: FontWeight.bold)),
              ],
            ),
            Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.08)),
            SizedBox(
              height: size.height * 0.06,
              width: size.width * 0.8,
              child: TextFormField(
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 18),
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      // borderSide: BorderSide(color: Colors.black, width: 100),
                      ),
                  hintText: 'Usuario',
                  icon: Icon(Icons.email)
                ),
              ),
            ),
            
            Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.04)),
            SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.06,
              child: TextField(
                obscureText: mostrar,
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 18),
                autofocus: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    // borderSide: BorderSide(color: Colors.black, width: 100),
                    ),
                  hintText: 'Contraseña',
                  suffixIcon: IconButton(
                    icon: Icon(mostrar ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        mostrar = !mostrar;
                      });
                    },
                  ),
                  icon: const Icon(Icons.password)
                ),
                onChanged: (text) {
                  // password = text;
                },
              ),
            ),
            Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.01)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("¿Olvidaste tu contraseña?", style: TextStyle(fontSize: 16)),
                Text(" Recuperar", style: TextStyle(fontSize: 16, color: ColorSelect.greenRecovery))
              ],
            ),
             Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.08)),
             SizedBox(
              
              width: size.width * 0.5,
              height: size.height * 0.05,
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // primary: ColorSelect.blueFont,
                    backgroundColor: ColorSelect.blueFont,
                    
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                        
                    )
                  ), 
                  onPressed: () async{
                Navigator.pushReplacementNamed(context, 'HomePage');
                },
                  child:const Text(
                    'INGRESAR',
                    style: TextStyle(fontSize: 18),
                  ),
              ),
            ),
              Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.02)),


          ],
        ),
      ),

    );
  }
}