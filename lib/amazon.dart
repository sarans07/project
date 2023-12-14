import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:saranproject/color.dart';

import 'amazonproduct.dart';
import 'model.dart';
class amazon extends StatefulWidget {
  const amazon({super.key});

  @override
  State<amazon> createState() => _amazonState();
}

class _amazonState extends State<amazon> {


  final List<String> items =[
    'assets/wa1.jpg',
    'assets/ip.jpg',
    'assets/tv.jpg',
    'assets/he.jpg',
  ];

  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
        height: 60,
          decoration: BoxDecoration(
              color: az,
          ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black45,width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black45,width: 1),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black45,width: 1),
              ),
              prefixIcon: Icon(Icons.search,size: 25,color: Colors.black87,),
              suffixIcon: Container(
                height: 10,
                width: 80,
               child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                    Icon(Icons.qr_code_scanner_outlined,size: 25,color: Colors.black54),
                      Icon(Icons.mic,size: 25,color: Colors.black54)
                        ]
                ),

              ),
              hintText: "Search Amazon.in",
              hintStyle: TextStyle(color: Colors.black45)
            ),
          ),
        ),
          //actions: [
         // Padding(
           // padding: const EdgeInsets.all(10.0),
          //  child: Icon(Icons.qr_code_scanner_outlined,size: 30,),
         // )
       // ],
      )
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
          Container(
            height: 50,
            width: double.infinity,
            color: az1,
            child: Row(
              children: [
                SizedBox(height: 10,),
                Icon(Icons.location_on_outlined),
                Text('  Deliver to Saran - Avinashi 641654'),
                Icon(Icons.arrow_drop_down_sharp)
              ],
            ),
          ),
            Container(
              height: 160,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: lis.length,

                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                        height:100,

                        width:80,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(
                                    5.0,
                                    5.0,
                                  ),
                                )
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(lis[index].image),
                                fit: BoxFit.fill,
                              )
                            ),
                          ),
                          Text(lis[index].text,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),
            CarouselSlider.builder(
              itemCount: items.length,
              options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  viewportFraction:1,
                  onPageChanged: (index,reason){
                    setState(() {
                      currentIndex = index;
                    });
                  }
              ),

              itemBuilder: (BuildContext context, int index, int pageViewIndex){
                return Container(
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(items[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
            DotsIndicator(
              dotsCount: items.length,
              position: currentIndex.toInt(),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext con,index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => const product()),
                                (Route<dynamic> route) => false,
                          );
                        },
                        child: Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 2,
                                offset: Offset(
                                  5.0,
                                  5.0
                                ),
                              )
                            ],
                            image: DecorationImage(
                              image: AssetImage("assets/wa1.jpg"),
                              fit: BoxFit.fill,
                            ),),
                          child: Text("Grab the Deals",
                          style: TextStyle(
                            color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ),
                    );
                      // Row(
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.all(4.0),
                      //       child: Container(
                      //         height: 300,
                      //         width: 300,
                      //         decoration: BoxDecoration(color: Colors.white),
                      //         child: GridView.count(
                      //           primary: false,
                      //             crossAxisCount: 2,
                      //           crossAxisSpacing: 10,
                      //           mainAxisSpacing: 10,
                      //           children: [
                      //             Container(
                      //               child: Column(
                      //                 children: [
                      //                   Padding(
                      //                     padding: const EdgeInsets.all(4.0),
                      //                     child: Container(
                      //                       height:100,
                      //                       width: 100,
                      //                       child: CircleAvatar(
                      //                         backgroundImage: AssetImage("assets/wa.jpg"),
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   Text("Watch",
                      //                   style: TextStyle(fontSize: 20),
                      //                   ),
                      //                 ],
                      //               )
                      //             ),
                      //             Container(
                      //                 child: Column(
                      //                   children: [
                      //                     Padding(
                      //                       padding: const EdgeInsets.all(4.0),
                      //                       child: Container(
                      //                         height:100,
                      //                         width: 100,
                      //                         child: CircleAvatar(
                      //                           backgroundImage: AssetImage("assets/ip.jpg"),
                      //                         ),
                      //                       ),
                      //                     ),
                      //                     Text("Mobile",
                      //                       style: TextStyle(fontSize: 20),
                      //                     ),
                      //                   ],
                      //                 )
                      //             ),
                      //             Container(
                      //                 child: Column(
                      //                   children: [
                      //                     Padding(
                      //                       padding: const EdgeInsets.all(4.0),
                      //                       child: Container(
                      //                         height:100,
                      //                         width: 100,
                      //                         child: CircleAvatar(
                      //                           backgroundImage: AssetImage("assets/tv.jpg"),
                      //                         ),
                      //                       ),
                      //                     ),
                      //                     Text("Tv",
                      //                       style: TextStyle(fontSize: 20),
                      //                     ),
                      //                   ],
                      //                 )
                      //             ),
                      //             Container(
                      //                 child: Column(
                      //                   children: [
                      //                     Padding(
                      //                       padding: const EdgeInsets.all(4.0),
                      //                       child: Container(
                      //                         height:100,
                      //                         width: 100,
                      //                         child: CircleAvatar(
                      //                           backgroundImage: AssetImage("assets/he.jpg"),
                      //                         ),
                      //                       ),
                      //                     ),
                      //                     Text("HeadPhone",
                      //                       style: TextStyle(fontSize: 20),
                      //                     ),
                      //                   ],
                      //                 )
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: const EdgeInsets.all(4.0),
                      //       child: Container(
                      //         height: 300,
                      //         width: 300,
                      //         decoration: BoxDecoration(color: Colors.white),
                      //         child: Column(
                      //           children: [
                      //             Padding(
                      //               padding: const EdgeInsets.all(8.0),
                      //               child: Text("Buy it again",
                      //               style: TextStyle(
                      //                 fontSize: 20
                      //               ),
                      //               ),
                      //             ),
                      //             Container(
                      //               height: 247,
                      //
                      //               decoration: BoxDecoration(
                      //                 image: DecorationImage(
                      //                     image: AssetImage("assets/ip.jpg"),
                      //                   fit: BoxFit.fill,
                      //                 ),
                      //               ),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: const EdgeInsets.all(4.0),
                      //       child: Container(
                      //         height: 300,
                      //         width: 300,
                      //         decoration: BoxDecoration(
                      //           image: DecorationImage(
                      //             image: AssetImage("assets/wa.jpg"),
                      //             fit: BoxFit.fill,
                      //           ),
                      //         ),
                      //         child: Expanded(child: Text("Deals related to your saved items",
                      //         style: TextStyle(
                      //           fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white,
                      //         ),
                      //         ),
                      //         ),
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: const EdgeInsets.all(4.0),
                      //       child: Container(
                      //         height: 300,
                      //         width: 300,
                      //         decoration: BoxDecoration(color: Colors.white),
                      //         child: Column(
                      //           children: [
                      //             Container(
                      //               height: 70,
                      //               width: 300,
                      //               child: Expanded(child: Text("Must have tools Up to 50% off",
                      //               style: TextStyle(
                      //                 fontSize: 25,
                      //               ),
                      //               ),
                      //               ),
                      //             ),
                      //             Container(
                      //               height: 222,
                      //               width: 300,
                      //               decoration: BoxDecoration(
                      //                 image: DecorationImage(
                      //                   image: AssetImage("assets/he.jpg"),
                      //                   fit: BoxFit.fill,
                      //                 )
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // );
                  },
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("Deals For You",
              style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                width: 400,
                //color: Colors.cyanAccent,
                child: GridView.count(
                    crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 145,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    offset: Offset(
                                        5.0,
                                        5.0
                                    ),
                                  )
                                ],
                              image: DecorationImage(
                                image: AssetImage("assets/he.jpg"),
                                fit: BoxFit.fill,
                              )
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.red
                                    ),
                                    child: Center(
                                      child: Text("65% off",
                                      style: TextStyle(
                                        color: Colors.white,fontSize: 20
                                      ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Deal",
                                  style: TextStyle(
                                    fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 145,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    offset: Offset(
                                        5.0,
                                        5.0
                                    ),
                                  )
                                ],
                                image: DecorationImage(
                                  image: AssetImage("assets/wa.jpg"),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.red
                                    ),
                                    child: Center(
                                      child: Text("70% off",
                                        style: TextStyle(
                                            color: Colors.white,fontSize: 20
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Deal",
                                    style: TextStyle(
                                      fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 145,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    offset: Offset(
                                        5.0,
                                        5.0
                                    ),
                                  )
                                ],
                                image: DecorationImage(
                                  image: AssetImage("assets/he.jpg"),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.red
                                    ),
                                    child: Center(
                                      child: Text("30% off",
                                        style: TextStyle(
                                            color: Colors.white,fontSize: 20
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Deal",
                                    style: TextStyle(
                                      fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 145,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    offset: Offset(
                                        5.0,
                                        5.0
                                    ),
                                  )
                                ],
                                image: DecorationImage(
                                  image: AssetImage("assets/wa.jpg"),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.red
                                    ),
                                    child: Center(
                                      child: Text("50% off",
                                        style: TextStyle(
                                            color: Colors.white,fontSize: 20
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Deal",
                                    style: TextStyle(
                                      fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("See all deals",
                style: TextStyle(
                  fontSize: 20,color: az,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
