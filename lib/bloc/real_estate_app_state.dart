part of 'real_estate_app_bloc.dart';

@immutable
sealed class RealEstateAppState {}

final class RealEstateAppInitial extends RealEstateAppState {}

// // states/house_list_states.dart
// abstract class HouseListState {}
class HouseListInitial extends RealEstateAppState {}
class HousesLoading extends RealEstateAppState {}
class HousesLoaded extends RealEstateAppState {
  final List<House> houses;
  HousesLoaded(this.houses);
}
class HousesError extends RealEstateAppState {
  final String error;
  HousesError(this.error);
}

