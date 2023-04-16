library home_widgets;

import 'package:flutter/material.dart';

class TopBox extends StatelessWidget {
  const TopBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 188.9,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0593FE), Color(0xFF047BD4)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: const ContainerFill(),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextWidget(),
      ],
    );
  }
}

class Notify extends StatelessWidget {
  const Notify({
    required Key key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 235,
      bottom: 860,
      child: IconButton(
        icon: const Icon(Icons.notifications),
        onPressed: onPressed,
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Yusuf Aristokrat S.Kom',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '098278376598276530',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    ' | ',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Sistem Informasi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContainerFill extends StatelessWidget {
  const ContainerFill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Opacity(
        opacity: 0.5,
        child: Image.asset(
          'assets/images/learning.png',
          // width: 300, // ubah sesuai dengan ukuran yang diinginkan
          // height: 300,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
         Padding(
            padding: EdgeInsets.only(
              right: 10,
              top: 30,
              left: 0,
              bottom: 0,
            ),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
          ),
      ],
    );
  }
}

class PresensimasukWidget extends StatelessWidget {
  const PresensimasukWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 167,
      height: 70,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.white,
                  Color(0xFF0593FE),
                  Color(0xFF034E87),
                ],
              ),
            ),
          ),
          Positioned(
            top: 7.4,
            left: 7,
            child: Image.asset(
              'assets/images/Vectormasuk.png',
              width: 55,
              height: 56.2,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Positioned(
            top: 27.5,
            left: 65,
            child: Text(
              'PRESENSI MASUK',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Rectangle extends StatelessWidget {
  final double height;

   const Rectangle({
    super.key, required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [Color(0xff0593fe), Color(0xf6047ad4), Color(0xe5024e87)],
        ),
      ),
    );
  }
}