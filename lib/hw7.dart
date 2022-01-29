import 'package:flutter/material.dart';

class hw7 extends StatelessWidget {
  const hw7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Center(
              child: Icon(
                Icons.lock,
                size: 60.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:12.0),
                child: Text(
                  "กรุณาใส่รหัสผ่าน",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Row(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [for (int i = 1; i <= 3; i++) _buildButton4(i)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [for (int i = 4; i <= 6; i++) _buildButton4(i)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [for (int i = 7; i <= 9; i++) _buildButton4(i)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 45.0,
                height: 45.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left:6.0),
                child: _buildButton4(0),
              ),
              Padding(
                padding: const EdgeInsets.only(left:6.0),
                child: Container(
                    width: 45.0,
                    height: 45.0,
                    child: Icon(
                      Icons.backspace,
                      size: 30,
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: TextButton(
                    onPressed: () {}, child: Text('ลืมรหัสผ่าน')),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget _buildButton4(int n) {
  return Padding(
    padding: const EdgeInsets.all(7.0),
    child: Container(
      width: 45.0,
      height: 45.0,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.pink, width: 4.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(2, 4),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            )
          ]),
      child: Center(
          child: Text(
            n.toString(),
            style: TextStyle(fontSize: 20),
          )),
    ),
  );
}