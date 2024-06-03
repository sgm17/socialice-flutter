import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class DetailLocationMap extends StatelessWidget {
  final List<double> geometry;

  const DetailLocationMap({Key? key, required this.geometry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final latLng = LatLng(geometry[1], geometry[0]);

    return FlutterMap(
      options: MapOptions(
          initialCenter: latLng,
          initialZoom: 15.0,
          interactiveFlags: ~InteractiveFlag.all),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.invelex.socialice',
        ),
        MarkerLayer(markers: [
          Marker(
            point: latLng,
            child: Icon(
              Icons.location_on,
              color: Colors.red,
              size: 40.0,
            ),
          ),
        ])
      ],
    );
  }
}
