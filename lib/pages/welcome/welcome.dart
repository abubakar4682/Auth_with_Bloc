import 'package:appbloc/main.dart';
import 'package:appbloc/pages/welcome/bloc/welcome_blocs.dart';
import 'package:appbloc/pages/welcome/bloc/welcome_event.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/welcome_state.dart';
class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController=PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
    child:  Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<WelcomeBloc,WelcomeState>(
        builder: (context,state){
            return Container(
              width: 376.w,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  PageView(
                    controller: pageController,
                    onPageChanged: (index){
                      state.page=index;
                      BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                      print('index value is ${index}');

                    },
                    children: [
                      _page(
                        1,
                        context,
                        'next',
                        'First see Learing',
                        'Forget about a for of paper all knowldget in on learning',
                        'image path',

                      ),
                      _page(
                        1,
                        context,
                        'next',
                        'Connect With Everyone',
                        'Always keep in touch with yourtutor and friend.Lets get connected! ',
                        'image path',

                      ),
                      _page(
                        2,
                        context,
                        'Get Started',
                        'Always Fascinated Learning ',
                        'Anywhere,anytime.The time is at your discretion so study whenever you want',
                        'image path',

                      ),
                      _page(
                        3,
                        context,
                        'next',
                        'First see Learing',
                        'Forget about a for of paper all knowldget in on learning',
                        'image path',

                      ),
                    ],
                  ),
                  Positioned(
                      bottom: 100.h,

                      child:DotsIndicator(
                        position: state.page.toInt() % 3,
                        dotsCount: 3,
                        mainAxisAlignment: MainAxisAlignment.center,
                        decorator: DotsDecorator(

                            color: Colors.grey,
                            size: Size.square(9.0),
                            activeColor:Colors.blue ,
                            activeSize: Size(10,8),
                            activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                        ),

                      ))
                ],
              ),
            );
        },
      )




    ),
    );




  }
  Widget _page(int index,BuildContext context,String buttonName,String title,String subtitle,String imagePath){

    return    Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Text('Image one'),
        ),
        Container(
          child: Text(title,style: TextStyle(
            color: Colors.black,
            fontSize: 24,

          ),),
        ),
        Container(
          width: 375,
          padding: EdgeInsets.only(left: 30,right: 30),
          child: Text(subtitle,style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 14,

          ),),
        ),
        GestureDetector(
          onTap: (){
            if(index<3){
           //   pageController.animateToPage(index, duration: Duration(milliseconds: 5000), curve: Curves.decelerate);
              pageController.animateToPage(index.toInt(), duration: Duration(milliseconds: 1000), curve: Curves.decelerate);
            }else{
              
//              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHomePage(title: '')));
Navigator.of(context).pushNamedAndRemoveUntil('signIn', (route) => false);
            }
          },
          child: Container(
            margin: EdgeInsets.only(top: 100.h,left: 25.w),
            width: 325.w,
            height: 50.h,
            child: Center(child: Text(buttonName,style: TextStyle(
              color: Colors.white,
              fontSize: 16,

            ))),

            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(

                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0,10)
                  )
                ],
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(15 .w))

            ),

          ),
        )

      ],

    );
  }
}
