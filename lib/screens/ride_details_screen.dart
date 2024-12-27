import 'package:flutter/material.dart';
import '../models/ride_model.dart';

class RideDetailsScreen extends StatelessWidget {
  const RideDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RideModel ride = ModalRoute.of(context)!.settings.arguments as RideModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(ride.title),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Date: ${ride.date}', style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 10),
            Text('Details:', style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 5),
            Text(ride.details, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
