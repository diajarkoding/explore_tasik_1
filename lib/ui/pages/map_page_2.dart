import 'package:explore_tasik_1/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPageTwo extends StatefulWidget {
  const MapPageTwo({Key? key}) : super(key: key);

  @override
  _MapPageTwoState createState() => _MapPageTwoState();
}

class _MapPageTwoState extends State<MapPageTwo> {
  final CameraPosition _initialLocation = const CameraPosition(
    target: LatLng(-7.4432917, 108.2720867),
    // target: LatLng(-7.3601468, 108.1706082),
    zoom: 9,
  );

  late GoogleMapController mapController;

  late Position _currentPosition;

  // Methode for confirmation permission location
  // Future<Object> _determinePosition() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;

  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();

  //   try {
  //     if (!serviceEnabled) {
  //       return const ScaffoldMessenger(child: CircularProgressIndicator());

  //       // Future.error("Location services are disabled.");
  //     }

  //     permission = await Geolocator.checkPermission();
  //     if (permission == LocationPermission.deniedForever) {
  //       return Future.error(
  //           "Location permissions are permantly denied. we cannot request permissions.");
  //     }

  //     if (permission == LocationPermission.denied) {
  //       permission = await Geolocator.requestPermission();
  //       if (permission != LocationPermission.whileInUse &&
  //           permission != LocationPermission.always) {
  //         return Future.error(
  //             "Location permissions are denied (actual value: $permission).");
  //       }
  //     }
  //   } catch (e) {
  //     print(e);
  //   }

  //   return await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high);
  // }

  // Method for retrieving the current location
  _getCurrentLocation() async {
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
        print('CURRENT POS: $_currentPosition');
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 18.0,
            ),
          ),
        );
      });
    }).catchError((e) {
      print(e);
    });
  }

  final List<LatLng> _listLatLang = [
    const LatLng(-7.8133467, 108.2975685),
    const LatLng(-7.7472812, 108.2518219),
    const LatLng(-7.6695078, 108.0323841),
    const LatLng(-7.6419474, 108.3234367),
    const LatLng(-7.5547499, 108.2192171),
    const LatLng(-7.5025528, 108.3266449),
    const LatLng(-7.4471671, 108.1783464),
    const LatLng(-7.4229191, 108.1668724),
    const LatLng(-7.4020943, 108.1500878),
    const LatLng(-7.3451187, 108.2139545),
  ];

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Widget mapView() {
      return GoogleMap(
        initialCameraPosition: _initialLocation,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        mapType: MapType.normal,
        markers: _listLatLang.map((e) => customMarker(e)).toSet(),
        zoomGesturesEnabled: true,
        zoomControlsEnabled: false,
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
      );
    }

    Widget zoomButton() {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            top: 10.0,
          ),
          child: Column(
            children: <Widget>[
              ClipOval(
                child: Material(
                  color: whiteColor, // button color
                  child: InkWell(
                    splashColor: whiteColor, // inkwell color
                    child: const SizedBox(
                      width: 40,
                      height: 40,
                      child: Icon(Icons.add),
                    ),
                    onTap: () {
                      mapController.animateCamera(
                        CameraUpdate.zoomIn(),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ClipOval(
                child: Material(
                  color: whiteColor, // button color
                  child: InkWell(
                    splashColor: whiteColor, // inkwell color
                    child: const SizedBox(
                      width: 40,
                      height: 40,
                      child: Icon(Icons.remove),
                    ),
                    onTap: () {
                      mapController.animateCamera(
                        CameraUpdate.zoomOut(),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget curretLocationButton() {
      return SafeArea(
        child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0, bottom: 70.0),
            child: ClipOval(
              child: Material(
                color: whiteColor, // button color
                child: InkWell(
                  splashColor: Colors.white, // inkwell color
                  child: const SizedBox(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.my_location),
                  ),
                  onTap: () {
                    mapController.animateCamera(
                      CameraUpdate.newCameraPosition(
                        CameraPosition(
                          target: LatLng(
                            _currentPosition.latitude,
                            _currentPosition.longitude,
                          ),
                          zoom: 10,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: <Widget>[
            // Map View
            mapView(),
            // Show current location button
            curretLocationButton(),
            // Show zoom buttons
            zoomButton(),
          ],
        ),
      ),
    );
  }

  Marker customMarker(LatLng e) {
    return Marker(
      markerId: MarkerId(e.hashCode.toString()),
      position: e,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    );
  }
}
