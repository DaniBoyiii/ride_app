import 'package:flutter/material.dart';
import '../utils/mock_data.dart';
import '../models/ride_model.dart';
import '../widgets/ride_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final rides = mockRides; // Mock data list of RideModel

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: rides.length,
        itemBuilder: (context, index) {
          final RideModel ride = rides[index];
          return RideCard(
            ride: ride,
            onTap: () {
              Navigator.pushNamed(
                context,
                '/ride_details',
                arguments: ride,
              );
            },
          );
        },
      ),
    );
  }
}
