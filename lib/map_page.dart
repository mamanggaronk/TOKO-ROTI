import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  const MapPage({
    super.key,
    required this.position,
  });

  final LatLng position;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: position,
        zoom: 15,
      ),
      markers: {
        Marker(
          markerId: MarkerId('Jalan Parasamya Tengah'),
          position: position,
          infoWindow: InfoWindow(title: 'jalan'),
        )
      },
    );
  }
}
