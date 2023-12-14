import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:saranproject/model.dart';
import 'model.dart';
class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  TextEditingController _controller =TextEditingController();
  int currentIndex = 0;
  final List<String> items = [
    'assets/ip.jpg',
    'assets/wa.jpg',
    'assets/wa1.jpg',
    'assets/w3.jpg',
    'assets/tv.jpg',
    'assets/lo.jpg',
    'assets/he.jpg',
    'assets/w4.jpg',
  ];
  final List<String> items1 = [
    'assets/ip.jpg',
    'assets/wa.jpg',
    'assets/wa1.jpg',
    'assets/w3.jpg',
  ];
  final List<String> items2 = [
    'assets/he.jpg',
    'assets/lo.jpg',
    'assets/ip.jpg',
    'assets/wa.jpg',
    'assets/wa1.jpg',
    'assets/w3.jpg',
    'assets/tv.jpg',
    'assets/lo.jpg',
    'assets/he.jpg',
    'assets/w4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return[
              SliverAppBar(
                title: Row(
                  children: [
                    Text("saran_____07",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down,size: 30),
                  ],
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add_box_outlined,size: 30,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: badges.Badge(
                      badgeContent: Text('.'),
                      child: Icon(Icons.menu,size: 30,),
                    ),
                  ),
                ],
                bottom: TabBar(
                  tabs: [
                    Container(
                      height: 50,
                      width: 135,
                      child: Icon(Icons.view_column_outlined,size: 40,),
                    ),
                    Container(
                      height: 50,
                      width: 135,
                      child: Icon(Icons.video_collection,size: 40,),
                    ),
                    Container(
                      height: 50,
                      width: 135,
                      child: Icon(Icons.person_pin_outlined,size: 40,),
                    ),
                  ],
                ),
               /* PreferredSize(
                   preferredSize: Size.fromHeight(0.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                      Container(
                        height: 50,
                        width: 135,
                        child: Icon(Icons.view_column_outlined,size: 40,),
                      ),
                       Container(
                         height: 50,
                         width: 135,
                         child: Icon(Icons.video_collection,size: 40,),
                       ),
                       Container(
                         height: 50,
                         width: 135,
                         child: Icon(Icons.person_pin_outlined,size: 40,),
                       ),
                     ],
                   ),
                ),*/
                stretch: true,
                expandedHeight: 600,
                flexibleSpace: Container(
                  child: FlexibleSpaceBar(
                    background: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 100),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage("assets/wa.jpg"),
                                        fit: BoxFit.fill,
                                      )
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text("11",
                                    style: TextStyle(
                                      fontSize: 20,fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Text("Posts",
                                    style: TextStyle(
                                      fontSize: 20
                                    ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("500",
                                      style: TextStyle(
                                          fontSize: 20,fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("Followers",
                                      style: TextStyle(
                                          fontSize: 20
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("500",
                                      style: TextStyle(
                                          fontSize: 20,fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("Following",
                                      style: TextStyle(
                                          fontSize: 20
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("Saran S",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,fontSize: 20,
                                      ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("19/10/22",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("007.com",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),color: Color(0xFFd7d7d7),
                                    ),
                                    child: Center(child: Text("Edit Profile",
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                    )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),color: Color(0xFFd7d7d7),
                                    ),
                                    child: Center(child: Text("Edit Profile",
                                      style: TextStyle(
                                        fontSize: 25,
                                      ),
                                    )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),color: Color(0xFFd7d7d7),
                                    ),
                                    child: Center(child: Icon(Icons.person_add)),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 150,
                              child: ListView.builder(
                                  itemCount: lis1.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext con, index)
                                {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(lis1[index].image),
                                              fit: BoxFit.fill,
                                            )
                                          ),
                                        ),
                                        Text(lis1[index].text,
                                        style: TextStyle(fontSize: 20),
                                        )
                                      ],
                                    ),
                                  );
                                }
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
               )
             ];
           }, body: TabBarView(
             children: [
               GridView.builder(
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3,
                     mainAxisSpacing: 8.0,
                     crossAxisSpacing: 8.0,
                   ),
                   itemCount: items.length,
                   itemBuilder: (context, index){
                     return Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage(items[index]),
                           fit: BoxFit.fill
                         )
                       ),
                     );
                   }
               ),
               GridView.builder(
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3,
                     mainAxisSpacing: 8.0,
                     crossAxisSpacing: 8.0,
                   ),
                   itemCount: items1.length,
                   itemBuilder: (context, index){
                     return Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(
                           image: DecorationImage(
                               image: AssetImage(items1[index]),
                               fit: BoxFit.fill
                           )
                       ),
                     );
                   }
               ),
               GridView.builder(
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3,
                     mainAxisSpacing: 8.0,
                     crossAxisSpacing: 8.0,
                   ),
                   itemCount: items2.length,
                   itemBuilder: (context, index){
                     return Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(
                           image: DecorationImage(
                               image: AssetImage(items2[index]),
                               fit: BoxFit.fill
                           )
                       ),
                     );
                   }
               ),
             ],
           ),
         ),
      ),
     );
   }
 }
