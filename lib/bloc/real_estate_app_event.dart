part of 'real_estate_app_bloc.dart';

@immutable
sealed class RealEstateAppEvent {}

// events/house_list_events.dart
//abstract class HouseListEvent {}
class FetchHousesEvent extends RealEstateAppEvent {}
class LoadMoreHousesEvent extends RealEstateAppEvent {}
class HouseTappedEvent extends RealEstateAppEvent {
  final House house;
  HouseTappedEvent(this.house);
}
