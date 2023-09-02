import 'dart:convert';
//import 'dart:ui';
//import 'dart:html';
import 'package:http/http.dart' as http;
import 'package:login_app/model/user_dob.dart';
import 'package:login_app/model/user_location.dart';
import 'package:login_app/model/user_name.dart';
import 'package:login_app/model/user.dart';
import 'package:login_app/model/user_pic.dart';

class UserApi {
  static Future<List<User>> fetchUsers() async {
    const url = 'https://randomuser.me/api/?results=50';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final users = results.map((e) {
      final name = UserName(
        title: e['name']['title'],
        first: e['name']['first'],
        last: e['name']['last'],
      );
      final date = e['dob']['date'];
      final dob = UserDob(
        age: e['dob']['age'],
        date: DateTime.parse(date),
      );
      final coordinates = LocationCoordinates(
        latitude: e['location']['coordinates']['longitude'],
        longitude: e['location']['coordinates']['longitude'],
      );
      final street = LocationStreet(
        name: e['location']['street']['name'],
        number: e['location']['street']['number'],
      );
      final timezone = LocationTimezone(
        offset: e['location']['timezone']['offset'],
        description: e['location']['timezone'][' description'] ?? '',
      );
      final location = UserLocation(
          city: e['location']['city'],
          country: e['location']['country'],
          postcode: e['location']['postcode'].toString(),
          state: e['location']['state'],
          coordinates: coordinates,
          street: street,
          timezone: timezone);
      final picture = UserPicture(
        large: e['picture']['large'],
        medium: e['picture']['medium'],
        thumbnail: e['picture']['thumbnail'],
      );
      return User(
        cell: e['cell'],
        email: e['email'],
        gender: e['gender'],
        nat: e['nat'],
        phone: e['phone'],
        name: name,
        dob: dob,
        location: location,
        picture: picture,
      );
    }).toList();
    return users;
  }
}
