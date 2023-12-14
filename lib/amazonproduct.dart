import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:saranproject/amazon.dart';
import 'package:saranproject/home.dart';
import 'color.dart';
class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}
class _productState extends State<product> {
  final items = [
    Image(image: AssetImage("assets/wa1.jpg"),fit: BoxFit.fill,),
    Image(image: AssetImage("assets/wa.jpg"),fit: BoxFit.fill,),
    Image(image: AssetImage("assets/wa2.jpg"),fit: BoxFit.fill,),
    Image(image: AssetImage("assets/w3.jpg"),fit: BoxFit.fill,),
    Image(image: AssetImage("assets/w4.jpg"),fit: BoxFit.fill,),
  ];
  int currentIndex =0;
  String dropdownvalue = '1';
  var Qty = [
    '1',
    '2',
    '3',
    '4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pushAndRemoveUntil(
                  context,
                MaterialPageRoute(builder: (context) => const home()),
                    (Route<dynamic> route) => false,
              );
            },
            child: Icon(Icons.arrow_back,size: 30,)),
        backgroundColor: az,
        title: Container(
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
          ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CarouselSlider(
                      items: items,

                      options: CarouselOptions(
                          height: 500,

                          enlargeCenterPage: false,
                          autoPlay: false,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          viewportFraction: 1,
                          onPageChanged: (index, reason){
                            setState(() {
                              currentIndex = index;
                            });
                          }
                      ),
                    ),
                    DotsIndicator(
                      dotsCount: items.length,
                      position: currentIndex.toInt(),
                    ),
                  ],
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: CircleAvatar(
                    child: Text("20%"),
                    backgroundColor: Colors.red,
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 10,
                    child: Icon(Icons.share,size: 25,color: Colors.black,)
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" Visit the Watch Store",
                    style: TextStyle(
                      color: az,fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(width: 60,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("4",
                  style: TextStyle(
                    color: Colors.black,fontSize: 15,
                  ),
                  ),
                ),
                RatingBar.builder(
                  initialRating: 4,
                    itemSize: 15,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder:  (context, _) =>Icon(Icons.star,color: Colors.yellow,),
                    onRatingUpdate: (double value){},
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("1,574",
                    style: TextStyle(
                      color: Colors.black,fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Text("Fossil Gen 6 Digital Black Dial Men's Watch-FTW4061",
            style: TextStyle(
              color: Colors.grey,fontSize: 16,
            ),
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width: 1),
              ),
              child: Row(
                children: [
                  Container(
                    height: 180,
                    width: 115,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://ds6yc8t7pnx74.cloudfront.net/en-US/alexa/branding/alexa-guidelines/brand-guidelines/the-alexa-logo.thumb.800.480.png?ck=1643307294"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                Container(
                  height: 200,
                  width: 230,
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Center(
                        child: Text("Set a workout timer, check the weather, control smart home devices, and more. Just ask Alexa.",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        ),
                      ),
                      RichText(
                          text: TextSpan(
                            text: "ALEXA BUILT-IN  ",
                            style: TextStyle(
                              color: Colors.grey,fontSize: 15,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Learn more ˅",
                                  style: TextStyle(
                                    color: az,fontSize: 15,
                                  )
                              )
                            ]
                          ),
                      ),
                    ],
                  ),
                )
                ],
              ),
            ),
           Divider(
             height: 50,
             thickness: .5,
             color: Colors.grey,
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
               child: Row(
                 children: [
                   RichText(
                       text: TextSpan(
                         text: "Color: ",
                         style: TextStyle(
                           color: Colors.black,fontSize: 18,
                         ),
                         children: [
                           TextSpan(
                             text: "Black",
                             style: TextStyle(
                               color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18,
                             ),
                           ),
                         ],
                       ),
                   ),
                   SizedBox(width: 250),
                   Icon((Icons.arrow_drop_down_sharp),size: 30,)
                 ],
               ),
              ),
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 270,
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey,width: 2),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                    image: DecorationImage(
                                      image: AssetImage("assets/w3.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("  Black",
                                  style: TextStyle(
                                    fontSize: 18,fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: RichText(
                                      text: TextSpan(
                                        text: "  -20% ",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "₹19,197.00",
                                            style: TextStyle(
                                              fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: RichText(
                                      text: TextSpan(
                                        text: "  M.R.P ",
                                        style: TextStyle(
                                          fontSize: 18,color: Colors.black
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                        text: "₹21,152.00",
                                        style: TextStyle(
                                          decoration: TextDecoration.lineThrough,color: Colors.black54
                                        ),
                                      ),
                                  ],
                                      ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("  In Stock",
                                  style: TextStyle(
                                    fontSize: 18,color: Colors.green
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),
            Divider(
              height: 50,
              thickness: 0.5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                            text: "-20%",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "₹ 19,197.00",
                                  style: TextStyle(
                                    color: Colors.black,fontSize: 18,
                                  )
                              )
                            ]
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          text: "M.R.P ",
                          style: TextStyle(
                            fontSize: 18,color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "₹21,152.00",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,color: Colors.black,fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                            text: "EMI",
                            style: TextStyle(
                              fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: " starts at ₹931. No Cost EMI available",
                                  style: TextStyle(
                                    fontSize: 18,color: Colors.black54,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: " EMI options",
                                        style: TextStyle(
                                          color: az,fontSize: 18,
                                        )
                                    )
                                  ]
                              )
                            ]
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Inclusive of all taxes",
                        style: TextStyle(
                            fontSize: 18,color: Colors.black
                        ),
                      ),),
                  ],
                ),
              ),
            ),
            Divider(
              height: 50,
              thickness: 0.5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          text: "FREE delivery ",
                          style: TextStyle(
                            color: az,fontSize: 18,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Friday, 24 November. ",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Details",
                                  style: TextStyle(
                                    color: az,fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          text: "Or fastest delivery",
                          style: TextStyle(
                            color: Colors.black,fontSize: 18,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Thursday, 23 November. ",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Order within",
                                  style: TextStyle(
                                    color: Colors.black,fontSize: 18,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: " 2 hrs 58 mins. ",
                                      style: TextStyle(
                                        fontSize: 18,color: Colors.green,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Details",
                                          style: TextStyle(
                                            color: az,fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,size: 20,),
                        Text("Deliver to Saran - Avinahi 651 654",
                          style: TextStyle(
                            color: az,fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("In stock",
                        style: TextStyle(
                          fontSize: 18,color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffd8dad9),width: 1),
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffd8dad9),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFf0f2f1),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Text(" Qty: ",
                      style: TextStyle(
                        fontSize: 25
                      ),
                      ),
                      DropdownButton(

                        // Initial Value
                        value: dropdownvalue,
                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: Qty.map((String Qty) {
                          return DropdownMenuItem(
                            value: Qty,
                            child: Text(Qty,style: TextStyle(
                              fontSize: 25
                            ),),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 400,
              child: OutlinedButton(onPressed: (){}, child: Text("Add to Cart",
              style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,
              ),
              ),
              style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Colors.yellow,
              ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 50,
              width: 400,
              child: OutlinedButton(onPressed: (){}, child: Text("Buy Now",
                style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,
                ),
              ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.orangeAccent,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.lock,size: 30,color: Colors.grey,),
                  Text("Secured Transaction",
                  style: TextStyle(
                    color: az,fontSize: 18,
                  ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
