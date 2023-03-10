import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    double h= MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              width: w,
              height: h * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "img/loginImg.jpeg"
                    ),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            SizedBox(height: 70,),
            Container(
              width: w,
              margin: const EdgeInsets.only(left:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple
                    ),
                  ),
                  Text(
                    "a@a.com",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black38
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 250,),
            Container(
              width: w * 0.55,
              height: h *0.075,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(
                      "img/button1.jpeg"
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child:Center(
                child: Text(
                  " Logout ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        )

    );
  }
}
