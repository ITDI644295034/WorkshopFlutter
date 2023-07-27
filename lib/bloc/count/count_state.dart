part of 'count_bloc.dart';

abstract class CountState extends Equatable {
  const CountState();
}

class CountInitial extends CountState {
  @override
  List<Object> get props => [];
}
