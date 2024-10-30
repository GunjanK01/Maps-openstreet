import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final MapController _mapController = MapController();
  double _currentZoom = 13.0;

// intial centre stated here
  final LatLng _initialCenter = const LatLng(17.385044, 78.486671);

  void _zoomIn() {
    setState(() {
      _currentZoom += 2;
      _mapController.move(_initialCenter, _currentZoom);
    });
    
  }

  void _zoomOut() {
    setState(() {
      _currentZoom -= 2;
      _mapController.move(_initialCenter, _currentZoom); // Use initial center
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hyderabad, India'),
        elevation: 2,
      ),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: _initialCenter,
          initialZoom: _currentZoom,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: const ['a', 'b', 'c'],
            userAgentPackageName: 'com.example.workingwithmaps6',
          ),
        
     
      Positioned(
        right: 10,
        bottom: 80,
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: _zoomIn,
              child: const Icon(Icons.zoom_in),
            ),
            const SizedBox(height: 8),
            FloatingActionButton(
              onPressed: _zoomOut,
              child: const Icon(Icons.zoom_out),
            ),
          ],
        ),
      ),
        ], 
    ),);
  }
}
