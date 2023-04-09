import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'geo_service.dart';
import 'login_service.dart';

external DateTime add(Duration duration);
class ReportService {
  Future report(String name, String description, XFile photo, {bool? isAnonymous}) async {

    GeoService geoService = GeoService();
    LatLng location = await geoService.getLocation();

    AuthService authService = AuthService();
    User? user = authService.auth.currentUser;

    final today = DateTime.now();

    var ReportData = <String, dynamic>{
      "Name": name,
      "Image": photo,
      "Description": description,
      "Date": today
    };

    ReportData.removeWhere((isAnonymous == true) as bool Function(String key, dynamic value));

    if (isAnonymous == true || user == null || user.isAnonymous) {
      // report as anonymous user
    } else {
      // report as an existing user
      var userId = user.uid;
    }

    
  }
}



