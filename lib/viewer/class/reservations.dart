import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
class Reservation {
  final int id;
  final String reservationName;
  final List<ReservationDescription> reservationDescription;

  Reservation({
    required this.id,
    required this.reservationName,
    required this.reservationDescription,
  });

  factory Reservation.fromJson(Map<String, dynamic> json) {
    List<dynamic> descriptionJson = json['reservation_description'];

    List<ReservationDescription> descriptions = descriptionJson.map((description) => ReservationDescription.fromJson(description)).toList();

    return Reservation(
      id: json['id'],
      reservationName: json['reservation_name'],
      reservationDescription: descriptions,
    );
  }
}

class ReservationDescription {
  final String day;
  final String description;

  ReservationDescription({
    required this.day,
    required this.description,
  });

  factory ReservationDescription.fromJson(Map<String, dynamic> json) {
    return ReservationDescription(
      day: json['day'],
      description: json['description'],
    );
  }
}

Future<Reservation> loadJsonData() async {
  final jsonString = await rootBundle.loadString('assets/JSONFiles/intineraries.JSON');
  final jsonData = json.decode(jsonString);
  return Reservation.fromJson(jsonData[5]); // Assuming you have only one reservation in the JSON
}

Future<List<ReservationDescription>> getGetReservationDescriptionsByReservationName(String reservation_name) async {
  await Future.delayed(Duration(milliseconds: 500)); 
  final jsonString = await rootBundle.loadString('assets/JSONFiles/intineraries.JSON');
  final jsonData = json.decode(jsonString) as List<dynamic>;

  // Find the reservation with the specified name
  final matchingReservation = jsonData.firstWhere(
    (json) => json['reservation_name'] == reservation_name,
    orElse: () => null,
  );

  if (matchingReservation != null) {
    final List<dynamic> descriptionJson = matchingReservation['reservation_description'];

    List<ReservationDescription> descriptions = descriptionJson.map((description) => ReservationDescription.fromJson(description)).toList();
    return descriptions;
  } else {
    return [
      // ReservationDescription(day: 'No data available', description: 'No description available.')
    ];
  }
}

Future<List<Reservation>> loadJsonDataMany() async {
  final jsonString = await rootBundle.loadString('assets/JSONFiles/intineraries.JSON');
  final jsonData = json.decode(jsonString) as List<dynamic>;

  List<Reservation> reservations = jsonData
      .map((json) => Reservation.fromJson(json))
      .toList();

  return reservations;
}

