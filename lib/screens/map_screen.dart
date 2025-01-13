// // lib/screens/map_screen.dart
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter.dart';
// import 'package:location/location.dart';
// import '../models/rental_point.dart';

// class MapScreen extends StatefulWidget {
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   GoogleMapController? _mapController;
//   Location _location = Location();
//   Set<Marker> _markers = {};
//   LatLng? _currentLocation;
//   List<RentalPoint> _rentalPoints = [
//     RentalPoint(
//       id: '1',
//       name: 'Главный пункт проката',
//       address: 'Улица Пушкина 25/1',
//       latitude: 51.1801, // Замените на реальные координаты
//       longitude: 71.446, // Замените на реальные координаты
//       availableEquipment: ['Сноуборды', 'Лыжи', 'Велосипеды'],
//       workingHours: '09:00 - 20:00',
//     ),
//     // Добавьте другие точки проката
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//     _addMarkers();
//   }

//   Future<void> _getCurrentLocation() async {
//     try {
//       final locationData = await _location.getLocation();
//       setState(() {
//         _currentLocation = LatLng(
//           locationData.latitude!,
//           locationData.longitude!,
//         );
//       });
//       _animateToCurrentLocation();
//     } catch (e) {
//       print('Error getting location: $e');
//     }
//   }

//   void _animateToCurrentLocation() {
//     if (_currentLocation != null && _mapController != null) {
//       _mapController!.animateCamera(
//         CameraUpdate.newCameraPosition(
//           CameraPosition(
//             target: _currentLocation!,
//             zoom: 14,
//           ),
//         ),
//       );
//     }
//   }

//   void _addMarkers() {
//     setState(() {
//       _markers.clear();
//       for (var point in _rentalPoints) {
//         _markers.add(
//           Marker(
//             markerId: MarkerId(point.id),
//             position: LatLng(point.latitude, point.longitude),
//             infoWindow: InfoWindow(
//               title: point.name,
//               snippet: point.address,
//               onTap: () => _showRentalPointDetails(point),
//             ),
//           ),
//         );
//       }
//     });
//   }

//   void _showRentalPointDetails(RentalPoint point) {
//     showModalBottomSheet(
//       context: context,
//       builder: (context) => Container(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               point.name,
//               style: Theme.of(context).textTheme.titleLarge,
//             ),
//             SizedBox(height: 8),
//             Text('Адрес: ${point.address}'),
//             Text('Режим работы: ${point.workingHours}'),
//             SizedBox(height: 8),
//             Text('Доступный инвентарь:'),
//             ...point.availableEquipment.map((e) => Text('• $e')),
//             SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton.icon(
//                   icon: Icon(Icons.directions),
//                   label: Text('Маршрут'),
//                   onPressed: () => _openMapsWithDirections(point),
//                 ),
//                 ElevatedButton.icon(
//                   icon: Icon(Icons.shopping_cart),
//                   label: Text('Выбрать'),
//                   onPressed: () {
//                     Navigator.pop(context);
//                     // Добавьте логику выбора этой точки для самовывоза
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _openMapsWithDirections(RentalPoint point) async {
//     if (_currentLocation != null) {
//       final url = 'https://www.google.com/maps/dir/?api=1&origin=${_currentLocation!.latitude},${_currentLocation!.longitude}&destination=${point.latitude},${point.longitude}&travelmode=driving';
//       if (await canLaunch(url)) {
//         await launch(url);
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Пункты проката'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.my_location),
//             onPressed: _animateToCurrentLocation,
//           ),
//         ],
//       ),
//       body: _currentLocation == null
//           ? Center(child: CircularProgressIndicator())
//           : GoogleMap(
//               initialCameraPosition: CameraPosition(
//                 target: _currentLocation!,
//                 zoom: 14,
//               ),
//               onMapCreated: (controller) => _mapController = controller,
//               markers: _markers,
//               myLocationEnabled: true,
//               myLocationButtonEnabled: false,
//             ),
//     );
//   }
// }
