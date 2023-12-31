import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:real_estate_app/model/houseModel.dart';

part 'real_estate_app_event.dart';
part 'real_estate_app_state.dart';

class RealEstateAppBloc extends Bloc<RealEstateAppEvent, RealEstateAppState> {
  RealEstateAppBloc() : super(RealEstateAppInitial()) {
    on<RealEstateAppEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
