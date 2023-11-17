import 'package:flutter/material.dart';

AppBar buildApp(

    ){
  return AppBar(
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.0),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        height: 1.0,
      ),
    ),
    title: Text('Log In',style: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.normal,

    ),
    ),


  );
}

Widget buildThirdPartyLogin(BuildContext context){
  return Container(
    margin: EdgeInsets.only(
      top: 40,
      bottom: 20,
      left: 20,
      right: 20
    ),
   child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       _reuseableIcon('assets/images/google_icon.png'),
       _reuseableIcon('assets/images/icons8-apple-30.png'),
       _reuseableIcon('assets/images/icons8-facebook-48.png'),

     ],
   ),
  );
}

Widget _reuseableIcon(String iconename){
  return   GestureDetector(
    child: Container(
      height: 30,
      width: 30,
      child: Image.asset(iconename),

    ),
  );
}

Widget reuseableText(String title){
  return Text(title,style: TextStyle(
    color: Colors.grey.withOpacity(0.5),fontWeight: FontWeight.normal
  ),);
}

Widget buildTextFormField(String text, String textType, IconData? icon, Color? iconColor) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey, // Customize the border color
        width: 2.0, // Customize the border width
      ),
      borderRadius: BorderRadius.circular(8.0), // Customize the border radius
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: icon != null
              ? Icon(
            icon,
            color: iconColor ?? Colors.black, // Default to black if iconColor is not provided
          )
              : null,
          border: InputBorder.none, // Hide the default border
        ),
      ),
    ),
  );
}

class ForgetPasswordLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your forget password logic here
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Forget Password?',
          style: TextStyle(
            color: Colors.grey.withOpacity(0.7),
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}

Widget loginButton(String buttonName){
  return Container(
    height: 50,
    width: 345,
    child: Center(child: Text(buttonName,style: TextStyle(color: Colors.white),)),
    decoration: BoxDecoration(
      color: Colors.blue
    ),
  );
}