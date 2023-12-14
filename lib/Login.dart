import 'dart:ui';

import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.home,size: 40,color: Colors.white,),
        title: Center(child: Text("GT Shopping",
        style: TextStyle(
          fontWeight: FontWeight.bold,color: Colors.white
        ),
        )),
      ),
      body:
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/w.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Form(
              key: _formkey,
      child:
      Column(
        children: [
         SizedBox(
             height: 75,
         ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black87),
                image: DecorationImage(
                  image: AssetImage("assets/lo.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text("User Id",
            style: TextStyle(
              fontWeight: FontWeight.bold,color: Colors.green,fontSize: 25
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(Icons.mail),
                  prefixIconColor: Colors.black87,
                ),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {

                },
                validator: (value){
                  if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                    return 'Enter the valid E-Mail!';
                  }
                  return null;
                },
              ),
            ),
            Text("Password",
              style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.green,fontSize: 25
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Colors.black87
                ),
                keyboardType: TextInputType.visiblePassword,
                onFieldSubmitted: (value) {

                },
                validator: (value){
                  if (value!.isEmpty||value.length<4){
                    return 'Enter the valid Password';
                  }
                  return null;
                  
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton(onPressed: (){
                if(_formkey.currentState!.validate());
              },
                child: Text("Login",style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.green,),
            ),
          Text("Create Account?",
          style: TextStyle(
            decoration: TextDecoration.underline,color: Colors.blue
          ),
          ),
        ],
      ),
            ),
          ),
    );
  }
}
