import 'package:flutter/material.dart';

class RechargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Recharge'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Input field for mobile number
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Mobile Number',
              ),
            ),
            SizedBox(height: 16.0),
            // Dropdown for selecting recharge amount
            DropdownButtonFormField<int>(
              decoration: InputDecoration(
                labelText: 'Select Recharge Amount',
              ),
              items: [
                DropdownMenuItem<int>(
                  value: 10,
                  child: Text('\$10'),
                ),
                DropdownMenuItem<int>(
                  value: 20,
                  child: Text('\$20'),
                ),
                DropdownMenuItem<int>(
                  value: 50,
                  child: Text('\$50'),
                ),
                // Add more options as needed
              ],
              onChanged: (value) {
                // Handle value change
              },
            ),
            SizedBox(height: 16.0),
            // Button to proceed with payment
            ElevatedButton(
              onPressed: () {
                // Proceed with payment
              },
              child: Text('Proceed to Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
