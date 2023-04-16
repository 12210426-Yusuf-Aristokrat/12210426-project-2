import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class DashboardView extends StatelessWidget {
  Future<Uint8List> _loadImage() async {
    final imageData = await rootBundle.load('assets/images/userImage.png');
    return imageData.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.cyan,
        title: Row(
          children: [
            SizedBox(width: 10,),
            CircleAvatar(
              radius: 34,
              backgroundColor: Colors.white,
              child: FutureBuilder<Uint8List>(
                future: _loadImage(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting)
                    return CircularProgressIndicator();
                  if (snapshot.hasError)
                    return Text('Error: ${snapshot.error}');
                  return ClipOval(
                    child: Image.memory(
                      snapshot.data!,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            SizedBox(width: 5,),
             Positioned(
                  right: 0,
                  top: 0,
                  child: Icon(
                    Icons.notifications,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
            // NotifCount(),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yusuf Aristokrat',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.amberAccent,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'yusufaristokrat@gmail.com',
                    style: TextStyle(
                      fontSize: 9,
                      color: Colors.lightGreenAccent,
                      ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        currentIndex: 0,
        onTap: (index) {
          // Handle bottom navigation bar item tapped
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Berita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pengaturan',
          ),
        ],
      ),
    );
  }
}

class NotifCount extends StatelessWidget {
  const NotifCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: -10,
      child: Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            '1',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
