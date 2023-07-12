import 'package:equatable/equatable.dart';

class HardwareReadingsModel extends Equatable {
  final String id;
  final String uniqueId;
  final String lpg;
  final String temp;
  final DateTime time;

  const HardwareReadingsModel({
    required this.id,
    required this.uniqueId,
    required this.lpg,
    required this.temp,
    required this.time,
  });

  factory HardwareReadingsModel.initial() => HardwareReadingsModel(
        id: "",
        uniqueId: "",
        lpg: "00.00",
        temp: "00.00",
        time: DateTime.parse("2023-07-10 11:55:53"),
      );

  factory HardwareReadingsModel.fromJson(Map<String, dynamic> json) => HardwareReadingsModel(
        id: json["id"],
        uniqueId: json["unique_id"],
        lpg: json["lpg"],
        temp: json["temp"],
        time: DateTime.parse(json["time"]),
      );

  @override
  List<Object> get props {
    return [
      id,
      uniqueId,
      lpg,
      temp,
      time,
    ];
  }
}
