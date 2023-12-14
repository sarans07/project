import 'package:flutter/material.dart';
class project extends StatelessWidget {
  const project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Column(
        children: [
          Center(
            child: Container(
              height: 580,
              width: 330,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black87),
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage("assets/bc.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        image: DecorationImage(
                            image: AssetImage("assets/dd.jpg"),
                        fit: BoxFit.fill,
                        ),
                      ),
                      child: Center(child: Text("Hello",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.white,
                      ),
                      )),
                    ),
                  ),
                  Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 65,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            image: DecorationImage(
                              image: AssetImage("assets/ii.jpg"),
                              fit: BoxFit.fill,
                            )
                          ),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          image: DecorationImage(
                            image: AssetImage("assets/oo.jpg"),
                            fit: BoxFit.fill,
                          )
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 65,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            image: DecorationImage(
                              image: AssetImage("assets/ii.jpg"),
                              fit: BoxFit.fill,
                            )
                          ),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          image: DecorationImage(
                            image: AssetImage("assets/oo.jpg"),
                            fit: BoxFit.fill,
                          )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 250,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                    image: DecorationImage(
                                      image: AssetImage("assets/dd.jpg"),
                                      fit: BoxFit.fill,
                                    )
                              ),
                            ),
                          ),
                          Column(
                            children: [
                          Container(
                            height: 40,
                              width: 150,
                              child:
                            TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                            labelText: "Phone Number",
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.phone),
                              prefixIconColor: Colors.white
                            ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: ElevatedButton(onPressed: (){}, child: Text("Login"),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(25),
                                ),
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
          SizedBox(
            height: 25,
          ),
          Container(
            height: 150,
            width: 330,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black87),
            ),
            child:
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87),
                        image: DecorationImage(
                          image: AssetImage("assets/bc.jpg"),
                          fit: BoxFit.fill,
                        )
                      ),
                  ),
                ),
                Expanded(child: Text("United we stand, divided we fall.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.red,
                ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87),
                        image: DecorationImage(
                          image: AssetImage("assets/bc.jpg"),
                          fit: BoxFit.fill,
                        )
                      ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
