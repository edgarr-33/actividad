
import 'package:flutter/material.dart';
import 'dart:collection';
import 'package:google_maps_flutter/google_maps_flutter.dart';


import '../providers/location_provider.dart';
import '../providers/map_provider.dart';
import '../resource/colors.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final _location = LocationProvider();
  final _controller = MapProvider();
  final Set<Polygon> _polygons = HashSet<Polygon>();

  @override
  void initState() {
    _location.getLocation();
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final _initialCameraPosition =  CameraPosition(target: LatLng( 20.68384808048177, -103.34910918865033), zoom: 10);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorSelect.blueFont,
        title: const Text('Mapa'),
      ),
      drawer:  Drawer(
        child: Container(
          color: ColorSelect.blueFont,
          child: Column(
            children:  [
              const Padding(padding: EdgeInsets.only(top: 50)),
              Icon(Icons.person,size:180,color: ColorSelect.dorado,),
              Padding(padding: EdgeInsets.only(top: 30)),
              InkWell(
                child: MenuOpciones(Icons.how_to_reg,'Registro de usuario'),
                onTap: (){
                   Navigator.pushNamed(context, 'Registro');
                
                },
              ),
              InkWell(
                child: MenuOpciones(Icons.luggage,'Viajes'),
              ),
              InkWell(
                child: MenuOpciones(Icons.photo_album_outlined,'Galeria'),
              ),
              InkWell(
                child: MenuOpciones(Icons.moving,'Analisis'),
              ),
              InkWell(
                
                child: MenuOpciones(Icons.bookmark,'Guardado'),
              ),
              InkWell(
                child: MenuOpciones(Icons.logout,'Cerrar Sesión'),
                onTap: (){
                   Navigator.pushReplacementNamed(context, 'Login');
                
                },
              ),

             
            ],
          ),

        ),
      ),

      body: Container(
        color: Colors.transparent,
        // height: height * 0.6,
        child: Stack(
          children: [
            Positioned.fill(
              child: GoogleMap(
                markers: Set.of(_controller.markers.values),
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                onMapCreated: _controller.onMapCreated,
                initialCameraPosition: _initialCameraPosition,
                polygons: _polygons,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container MenuOpciones(IconData icono, String texto ) {
    return Container(
      height: 80,
      child: Row(
        
                  children: [

                    const Padding(padding: EdgeInsets.only(left: 30,top: 10)),
                    Icon(icono,size:50,color: ColorSelect.dorado,), 
                    const SizedBox(width: 10,),
                    Text(texto,style: const TextStyle(fontSize: 16,color: Colors.white
                    ),)
                  ],
                ),
    );
  }
}