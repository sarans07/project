import 'package:flutter/material.dart';
class tec extends StatefulWidget {
  const tec({super.key});

  @override
  State<tec> createState() => _tecState();
}

class _tecState extends State<tec> {

  TextEditingController n= TextEditingController();
  String op1="",op2="",optr="";
  bool  clk = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          TextFormField(
            controller: n,
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){

                if(clk)
                  {
                    op2 = "1";
                    n.text= op2;
                  }
                else
                  {
                    op1 = "1";
                    n.text= op1;
                  }

              }, child: Text("1")),
              ElevatedButton(onPressed: (){
                if(clk)
                {
                  op2 = "2";
                  n.text= op2;
                }
                else
                {
                  op1 = "2";
                  n.text= op1;
                }
              }, child: Text("2")),
              ElevatedButton(onPressed: (){
                n.text = "+";
                optr = " +";
                clk =true ;
              }, child: Text("+")),
              ElevatedButton(
                  onPressed: (){

                if(optr == "+")
                  {
                    // int a = int.parse(op1);
                    // int b = int.parse(op2);

                    int res = int.parse(op1)+int.parse(op2);

                    print(res);

                    n.text = res.toString();
                  }

              }, child: Text("=")),
            ],
          )
        ],
      ),
    );
  }
}
