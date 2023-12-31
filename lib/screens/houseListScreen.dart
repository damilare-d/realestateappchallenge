// screens/house_list_screen/house_list_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/bloc/real_estate_app_bloc.dart';

class HouseListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final houseListBloc = BlocProvider.of<RealEstateAppBloc>(context);

    return Scaffold(
     
      body: BlocBuilder<RealEstateAppBloc, RealEstateAppState>(
        builder: (context, state) {
          if (state is HousesLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is HousesLoaded) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                
                },
              // ... build house list items
            );
          } else if (state is HousesError) {
            return Center(child: Text(state.error));
          } else {
            return Center(child: Text('Initial state'));
          }
        },
      ),
      // ... floating action button to trigger events
    );
  }
}
