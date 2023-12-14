import 'package:flutter/material.dart';
class spotify extends StatefulWidget {
  const spotify({super.key});

  @override
  State<spotify> createState() => _spotifyState();
}

class _spotifyState extends State<spotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return[
            SliverAppBar(
              leading: Icon(Icons.arrow_back,size: 30,color: Colors.white,),
              pinned: true,
              expandedHeight: 400,
              stretch: true,
              titleSpacing: 200,
              //backgroundColor: Colors.transparent,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF695353),Color(0xff151313)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                ),
                child: FlexibleSpaceBar(
                  centerTitle: false,
                  title: Row(
                    children: [
                      Text("Anirudh",
                      style: TextStyle(
                        fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  background: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 280,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.2),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    prefixIcon: Icon(Icons.search),
                                    prefixIconColor: Colors.white,
                                    hintText: "Find in playlist",
                                    hintStyle: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text("Sort",
                                  style: TextStyle(
                                    color: Colors.white,fontSize: 20
                                  ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 140,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://images.cinemaexpress.com/uploads/user/imagelibrary/2017/11/21/original/Anirudh_Ravichander.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text("Anirudh Ravichander Mix",
                              style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              RichText(text: TextSpan(
                                text: "Hariharan, Yuvan Shanker Raja",
                                style: TextStyle(
                                  color: Colors.green,decoration: TextDecoration.underline,
                                ),
                              ),
                              ),
                              SizedBox(width: 5),
                              Text("and",
                              style: TextStyle(color: Colors.white60),
                              ),
                              SizedBox(width: 5),
                              RichText(text: TextSpan(
                                text: "Udit Narayan",
                                style: TextStyle(
                                  color: Colors.green,decoration: TextDecoration.underline,
                                ),
                              ))
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              CircleAvatar(
                                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Spotify_App_Logo.svg/1024px-Spotify_App_Logo.svg.png'
                                ),backgroundColor: Colors.transparent,
                              ),
                              SizedBox(width: 10),
                              Text("Spotify",
                              style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
                              ),
                              )
                            ],
                          )
                        ],
                      )
                      ],
                  ),
              ),
            ),
            ),
          ];
        },
        body: SingleChildScrollView(
        child: Container(
          height: 1000,
          color: Color(0xFF121212),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("    3h 35mins",
                style: TextStyle(
                  color: Colors.grey,fontSize: 18
                ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.add_circle_outline_outlined,color: Colors.grey,),
                        Icon(Icons.arrow_circle_down_outlined,color: Colors.grey,),
                        Icon(Icons.more_vert,color: Colors.grey,)
                      ],
                    ),
                  ),
                  SizedBox(width: 100),
                  Icon(Icons.shuffle_outlined,color: Colors.green,),
                  SizedBox(width: 60),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xFF1dd760),
                    child: Icon(Icons.play_arrow,size: 30),
                  )
                ],
              ),
              Container(
                child: ListView.builder(
                  itemCount: 10,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, int index){
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/wa1.jpg"),
                                fit: BoxFit.fill,
                              )
                            ),
                          ),
                        ),
                        Container(
                          width: 280,
                          child: Column(
                           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(("Song Name"),
                                style: TextStyle(
                                  fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white
                                ),
                                ),
                              ),
                              Row(

                                children: [
                                  Container(
                                    height: 25,
                                    width: 60,
                                    color: Color(0xFFc7c7c7),
                                    child: Center(child: Text("Lyrics",
                                    style: TextStyle(
                                      fontSize: 15,fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(("Artist Name"),
                                    style: TextStyle(
                                        fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.more_vert,size: 30,color: Colors.grey,),
                      ],
                    );
                    }
                ),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}
