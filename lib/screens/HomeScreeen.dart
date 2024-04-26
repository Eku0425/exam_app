
import 'package:exam_app/List.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Search bar
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 10),
                    height: 70,
                    width: 390,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Choose your cycle',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.search,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(8),
                height: 300,
                width: 410,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,
                  ),

                  ),



              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      ' Bike',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(4, (index) => Rowcontianer())
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          'Bike',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

    ],

          ),
        ),
      ),
    );
  }

  Container Rowcontianer() {
    return Container(
      margin: EdgeInsets.all(10),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black12,

        image: DecorationImage(
         image: AssetImage('assets/images/bike2.jpg'),
          fit: BoxFit.fill,

        ),
        //color: Colors.black,
        //shape: BoxShape.rectangle,


      ),

    );
  }

  Column productcolum({required String img})
  {
    return Column(
      children: [
        Wrap(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0,10,20,0),
              height: 170,
              width: 170,
              color: Colors.black,


              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
                //color: Colors.grey,
              ),
              child: Image.asset('assets/Images/bike3.webp'),


            ),
            Container(
              margin: EdgeInsets.fromLTRB(0,10,0,0),
              height: 170,
              width: 170,


              decoration: BoxDecoration

                (borderRadius: BorderRadius.circular(15),

              border:Border.all(
                color: Colors.black,
              ),
              //  color: Colors.grey,

              ),
            ),
          ],
        ),
      ],
    );
  }
}
