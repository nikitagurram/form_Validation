import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List images =[
      "Google.jpg",
      "twitter.jpg",
      "facebook.png"
    ];
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
            Container(
              margin: const EdgeInsets.only(left:20,right:20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sign up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.purple
                    ),
                  ),
                  SizedBox(height: 45,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2)
                          ),
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: " Enter Email id",
                        prefixIcon: Icon(Icons.email, color: Colors.deepPurpleAccent,),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2)
                          ),
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: " Enter Password ",
                        prefixIcon: Icon(Icons.lock, color: Colors.deepPurpleAccent,),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 45,),
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
                  " Sign up ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            RichText(text: TextSpan(
                text: "Have an account?",
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20
                ),
                children: [
                  TextSpan(
                      text: "Login here",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                  ),
                ]
            ),
            ),
            SizedBox(height: w*0.1,),
            RichText(text: TextSpan(
                text: " Sign up using one of the following method ",
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16
                ),

            ),
            ),
            Wrap(
              children: List<Widget>.generate(
                3,
                  (index){
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[200],
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          "img/"+images[index]
                        ),


                      ),
                    ),
                  );
                  }
              )

            )
          ],
        )

    );
  }
}
