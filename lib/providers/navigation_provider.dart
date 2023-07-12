import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NavigationProviderState extends Equatable {
  final int index;
  NavigationProviderState({
    required this.index,
  });

  factory NavigationProviderState.initial() {
    return NavigationProviderState(index: 0);
  }

  @override
  List<Object> get props => [index];

  @override
  bool get stringify => true;

  NavigationProviderState copyWith({
    int? index,
  }) {
    return NavigationProviderState(
      index: index ?? this.index,
    );
  }
}

class NavigationProvider with ChangeNotifier {
  NavigationProviderState _state = NavigationProviderState.initial();
  NavigationProviderState get state => _state;

  void navigate(int index) {
    _state = _state.copyWith(index: index);
    notifyListeners();
  }
}
