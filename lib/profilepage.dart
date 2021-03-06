import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  Widget textfield({@required hintText}) {
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff555555),
        
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 300,
                
                child: Column(
                  
                  children: const <Widget> [
                    Text("Name : Varshith V Hegde",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),SizedBox(height: 30),
                    Text("Email : varshithvh@gmail.com",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),SizedBox(height: 30),

                    Text("USN : 4MT19CS174",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),SizedBox(height: 30),

                    Text("Age : 20",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),SizedBox(height: 30),

                    
                  ],
                ),
                
              ),
              
            ],
          ),
          
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 20),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assests/images/varshith.jpg'),
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xff555555);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}