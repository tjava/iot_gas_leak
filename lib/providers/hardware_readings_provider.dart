import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:gas_leak/models/custom_error.dart';
import 'package:gas_leak/models/hardware_readings_model.dart';
import 'package:gas_leak/services/hardware_readings_service.dart';

enum HardwareReadingsStatus {
  initial,
  loading,
  loaded,
  error,
}

class HardwareReadingsState extends Equatable {
  final HardwareReadingsStatus status;
  final HardwareReadingsModel hardwareReadings;
  final CustomError error;
  final bool connection;
  const HardwareReadingsState({
    required this.status,
    required this.hardwareReadings,
    required this.error,
    this.connection = false,
  });

  factory HardwareReadingsState.initial() {
    return HardwareReadingsState(
      status: HardwareReadingsStatus.initial,
      hardwareReadings: HardwareReadingsModel.initial(),
      error: const CustomError(),
    );
  }

  @override
  List<Object> get props => [status, hardwareReadings, error];

  @override
  bool get stringify => true;

  HardwareReadingsState copyWith({
    HardwareReadingsStatus? status,
    HardwareReadingsModel? hardwareReadings,
    CustomError? error,
    bool? connection,
  }) {
    return HardwareReadingsState(
      status: status ?? this.status,
      hardwareReadings: hardwareReadings ?? this.hardwareReadings,
      error: error ?? this.error,
      connection: connection ?? this.connection,
    );
  }
}

class HardwareReadingsProvider with ChangeNotifier {
  HardwareReadingsState _state = HardwareReadingsState.initial();
  HardwareReadingsState get state => _state;

  HardwareReadingService hardwareReadingService = HardwareReadingService();

  HardwareReadingsProvider() {
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      getData();
      checkConnection();
    });
  }

  Future<void> getData() async {
    _state = _state.copyWith(status: HardwareReadingsStatus.loading);
    notifyListeners();

    try {
      final HardwareReadingsModel? data = await hardwareReadingService.getData();
      _state = _state.copyWith(
        status: HardwareReadingsStatus.loaded,
        hardwareReadings: data,
      );
      notifyListeners();
    } on CustomError catch (e) {
      _state = _state.copyWith(
        status: HardwareReadingsStatus.error,
        error: e,
      );
      notifyListeners();
    }
  }

  Future<void> checkConnection() async {
    final connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.none) {
      _state = _state.copyWith(connection: false);
    } else {
      _state = _state.copyWith(connection: true);
    }
    notifyListeners();
  }
}
