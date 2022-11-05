import 'package:flutter/material.dart';

import '../resource/colors.dart';
class RegistroUsuario extends StatefulWidget {
  const RegistroUsuario({Key? key}) : super(key: key);

  @override
  State<RegistroUsuario> createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {
  bool mostrar = true;
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
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
              child: Image.asset('assets/images/nota.png', scale: size.height * 0.0025),
            ),
            Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.04)),
            Column(
              children: const [
                Text("Registrate ahora", style: TextStyle(fontSize: 25, color: ColorSelect.blueFont)),
              ],
            ),
            Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.04)),
            SizedBox(
              height: size.height * 0.06,
              width: size.width * 0.8,
              child: TextFormField(
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 18),
                autofocus: true,
                keyboardType: TextInputType.name,
                autofillHints: const [AutofillHints.email],
                
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      // borderSide: BorderSide(color: Colors.black, width: 100),
                      ),
                  hintText: 'Usuario',
                  icon: Icon(Icons.person)
                ),
              ),
            ),
            Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.03)),
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
                  hintText: 'Correro electronico',
                  icon: Icon(Icons.email)
                ),
              ),
            ),
            Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.03)),
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
            Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.03)),
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
                  hintText: 'Confirmar contraseña',
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
            Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.04)),
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
                Navigator.pushReplacementNamed(context, 'Login');
                },
                  child:const Text(
                    'Registrar',
                    style: TextStyle(fontSize: 18),
                  ),
              ),
            ),
            Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.04)),
            Column(
              children: const [
                Text("-------------- O --------------", style: TextStyle(fontSize: 25, color: ColorSelect.blueFont)),
              ],
            ),
            Padding(padding: EdgeInsetsDirectional.only(top: size.height * 0.03)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: size.height * 0.11)),

                InkWell(
                  child: const Icon(Icons.facebook,color: ColorSelect.blueFont,size: 40,),
                  onTap: (){

                  },
                ),
                
                Padding(padding: EdgeInsets.only(left: size.height * 0.02)),
                InkWell(
                  child: const Icon(Icons.email,color: ColorSelect.blueFont,size: 40,),
                  onTap: (){

                  },
                ),
                Padding(padding: EdgeInsets.only(left: size.height * 0.02)),
                InkWell(
                  child: const Icon(Icons.whatsapp,color: ColorSelect.blueFont,size: 40,),
                  onTap: (){

                  },
                ),
                Padding(padding: EdgeInsets.only(left: size.height * 0.02)),
                InkWell(
                  child: const Icon(Icons.snapchat ,color: ColorSelect.blueFont,size: 40,),
                  onTap: (){

                  },
                ),
              ],
            )


          ],
        ),
      ),

    );
  }
}