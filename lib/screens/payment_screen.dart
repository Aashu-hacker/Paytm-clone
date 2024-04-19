import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bill Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Dropdown for selecting bill type
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Select Bill Type',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              items: [
                DropdownMenuItem<String>(
                  value: 'Electricity',
                  child: Text('Electricity'),
                ),
                DropdownMenuItem<String>(
                  value: 'Water',
                  child: Text('Water'),
                ),
                // Add more bill types as needed
              ],
              onChanged: (value) {
                // Handle value change
              },
            ),
            SizedBox(height: 16.0),
            // Input fields for bill details (e.g., account number, amount)
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Account Number',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Amount',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: Icon(Icons.attach_money),
              ),
            ),
            SizedBox(height: 16.0),
            // Button to proceed with payment
            ElevatedButton(
              onPressed: () {
                // Proceed with payment
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.lightBlue,
              ),
              child: Text('Proceed to Payment'),
            ),
            SizedBox(height: 16.0),
            // Additional options or information
            Text(
              'For any queries, please contact customer support.',
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
