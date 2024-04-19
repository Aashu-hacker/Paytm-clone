import 'package:flutter/material.dart';
import 'package:my_app/screens/profile_screen.dart';
import 'package:my_app/screens/payment_screen.dart';
import 'package:my_app/screens/recharge_screen.dart';
import 'package:my_app/screens/shopping_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paytm"),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.lightBlue,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              iconSize: 30.0,
              tooltip: 'Menu',
              padding: EdgeInsets.all(0.0),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.lightBlue,
              size: 30.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.lightBlue,
              size: 30.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.lightBlue,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.lightBlue,
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wallet Balance:',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '\$500', // Replace with actual wallet balance
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Featured Services',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildServiceButton(
                        Icons.payment,
                        'Pay',
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PaymentScreen()),
                          );
                        },
                      ),
                      _buildServiceButton(
                        Icons.airplane_ticket,
                        'Recharge',
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RechargeScreen()),
                          );
                        },
                      ),
                      _buildServiceButton(
                        Icons.shopping_cart,
                        'Shop',
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ShoppingScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent Transactions',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        
                    ],
                  ),
                ],
              ),
            ),
          
          ],
          
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('john.doe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2014/03/25/16/54/user-297566_960_720.png'),
                backgroundColor: Colors.transparent,
                radius: 30.0,
              ),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );// Close the drawer
              },
              // ignore: deprecated_member_use
              selected: true,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              // ignore: deprecated_member_use
              selected: false,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentScreen()),
                );
              },
              // ignore: deprecated_member_use
              selected: false,
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RechargeScreen()),
                );
              },
              // ignore: deprecated_member_use
              selected: false,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingScreen()),
                );
              },
              // ignore: deprecated_member_use
              selected: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceButton(IconData icon, String label, VoidCallback onPressed) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.lightBlue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Icon(icon, size: 40, color: Colors.lightBlue),
              SizedBox(height: 5),
              Text(label, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
