import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../resource/style_map.dart';


class MapProvider {

  Map<MarkerId, Marker> markers = Map();
  List<dynamic> data = [];
  List<dynamic> addres = [];
  List<dynamic> photo = [];

  void creadMarkers( LatLng position) async {
    final markerId = MarkerId(markers.length.toString());
    final marker = Marker(
      markerId: markerId, 
      position: position,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
      consumeTapEvents: true,
    );
    markers[markerId] = marker;
  }

  void onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(mapStyle);
  }
}
