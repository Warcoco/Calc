
import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
void main() {
 runApp(const MyApp());
}


class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Home());}}
var Loescrito = "";
List listadeloqueescribe = [];
class Home extends StatefulWidget{
 @override
 State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
       backgroundColor: Colors.black,
       body:Column(
           children: [
             Container(color: Colors.white,height: (MediaQuery.of(context).size.height)*0.3,width: MediaQuery.of(context).size.width,
               child:Column(children: [Text((Loescrito),style: const TextStyle(fontSize: 40),), Text("Aqui va el resultado",style: TextStyle(fontSize: 20)),Container(margin: const EdgeInsets.all(5))],
                 mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
               ),
             ),
             Row(
                 children:[
                   Container(color: Colors.green,height: (MediaQuery.of(context).size.height)*0.7,width: MediaQuery.of(context).size.width*0.5,
                       child: GridView.count(childAspectRatio: 2,crossAxisSpacing: 0,mainAxisSpacing: 0,crossAxisCount: 2,children: [
                         Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: ()
                         {
                           setState(() {});
                           if (Loescrito.isEmpty){}else{listadeloqueescribe.add(Loescrito);};
                           listadeloqueescribe.add("√");
                           Loescrito = "";

                         },child: const Text("√",style: TextStyle(fontSize: 60)))),
                         Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: ()
                         {
                           setState(() {});
                           if (Loescrito.isEmpty){}else{listadeloqueescribe.add(Loescrito);};
                           listadeloqueescribe.add("^2");
                           Loescrito = "";
                         },child: const Text("x²",style: TextStyle(fontSize: 60)))),
                         Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {
                           setState(() {});
                           if (Loescrito.isEmpty){}else{listadeloqueescribe.add(Loescrito);};
                           listadeloqueescribe.add("/");
                           Loescrito = "";
                         },child: const Text("÷",style: TextStyle(fontSize: 60)))),
                         Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {
                           setState(() {});
                           if (Loescrito.isEmpty){}else{listadeloqueescribe.add(Loescrito);};
                           listadeloqueescribe.add("*");
                           Loescrito = "";
                         },child: const Text("*",style: TextStyle(fontSize: 60)))),
                         Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {
                           setState(() {});
                           if (Loescrito.isEmpty){}else{listadeloqueescribe.add(Loescrito);};
                           listadeloqueescribe.add("+");
                           Loescrito = "";
                         },child: const Text("+",style: TextStyle(fontSize: 60)))),
                         Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {
                           setState(() {});
                           if (Loescrito.isEmpty){}else{listadeloqueescribe.add(Loescrito);};
                           listadeloqueescribe.add("-");
                           Loescrito = "";
                         },child: const Text("-",style: TextStyle(fontSize: 60)))),
                       ])),
                   Column(
                       children:
                       [
                         Container(color: Colors.white,height: (MediaQuery.of(context).size.height)*0.48,width: MediaQuery.of(context).size.width*0.5,
                           child: GridView.count(childAspectRatio: 2,crossAxisSpacing: 0,mainAxisSpacing: 0,crossAxisCount: 3,children: [
                             Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {setState(() {Loescrito = Loescrito+("1");});},child: const Text("1"))),
                             Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {setState(() {Loescrito = Loescrito+("2");});},child: const Text("2"))),
                             Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {setState(() {Loescrito = Loescrito+("3");});},child: const Text("3"))),
                             Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {setState(() {Loescrito = Loescrito+("4");});},child: const Text("4"))),
                             Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {setState(() {Loescrito = Loescrito+("5");});},child: const Text("5"))),
                             Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {setState(() {Loescrito = Loescrito+("6");});},child: const Text("6"))),
                             Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {setState(() {Loescrito = Loescrito+("7");});},child: const Text("7"))),
                             Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {setState(() {Loescrito = Loescrito+("8");});},child: const Text("8"))),
                             Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {setState(() {Loescrito = Loescrito+("9");});},child: const Text("9"))),



                           ],),

                         ),
                         Container(color: Colors.pink,height: (MediaQuery.of(context).size.height)*0.22,width: MediaQuery.of(context).size.width*0.5, child: GridView.count(childAspectRatio: 2,crossAxisSpacing: 0,mainAxisSpacing: 0,crossAxisCount: 2,children: [
                           Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: () {setState(() {Loescrito = Loescrito+("0");});},child: const Text("0"))),
                           Container(decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),child: TextButton(onPressed: ()
                           {
                             calculadora calc = calculadora();
                             if (Loescrito.isEmpty){}else{listadeloqueescribe.add(Loescrito);};
                             Loescrito = "";
                             var largolista = listadeloqueescribe.length;
                             for (var i=0; largolista>i;i++){
                               print (listadeloqueescribe[0+i]);
                               var listadeloqueescribio1 = listadeloqueescribe;
                             };
                             if (listadeloqueescribe[0] == "√"){
                               calc.simbolo = "√";
                             }else if (listadeloqueescribe[1] == "^2"){
                               calc.simbolo = "^2";
                             }else if (listadeloqueescribe[1] == "+"){
                               calc.simbolo = "+";
                             }else if (listadeloqueescribe[1] == "-"){
                               calc.simbolo = "-";
                             }else if (listadeloqueescribe[1] == "*"){
                               calc.simbolo = "*";
                             }else if (listadeloqueescribe[1] == "÷"){
                               calc.setSimbolo("÷");
                             };


                             switch(calc.simbolo) {
                             case "+": {
                               var valor = listadeloqueescribe[0];
                               var valor2 = listadeloqueescribe[2];
                               calc.op1 = int.parse(valor);
                               calc.op3 = int.parse(valor2);
                               calc.Sumar();
                           }
                           break;

                           case "-": {
                             var valor = listadeloqueescribe[0];
                             var valor2 = listadeloqueescribe[2];
                             calc.op1 = int.parse(valor);
                             calc.op3 = int.parse(valor2);
                             calc.Restar();
                           }
                           break;

                           case "*": {
                             var valor = listadeloqueescribe[0];
                             var valor2 = listadeloqueescribe[2];
                             calc.op1 = int.parse(valor);
                             calc.op3 = int.parse(valor2);
                             calc.Multiplicar();
                           }
                           break;
                           case "÷": {
                             var valor = listadeloqueescribe[0];
                             var valor2 = listadeloqueescribe[2];
                             calc.op1 = int.parse(valor);
                             calc.op3 = int.parse(valor2);
                             calc.dividir();
                           }
                           break;

                           case "^2": {
                             var valor = listadeloqueescribe[0];
                             calc.op1 = int.parse(valor);
                             calc.Cubetear();
                           }
                             break;

                             case "√": {
                              var valor = listadeloqueescribe[1];
                              calc.op1 = int.parse(valor);
                              calc.Raiz();
                           }
                             break;



                           }

                           }


                               ,child: const Text("="))),
                         ]))

                       ] )
                 ]
             )
           ]
       )
   );
 }
}
class calculadora{

 String? simbolo;
 int? op1;
 int? op2;
 int? op3;

String getSimbolo(){
   return simbolo;
}

setSimbolo(String arg){
   simbolo = arg;

}

String Sumar() {
   return (op1+op3).toString();
};
String Restar(){
   return(op1-op3).toString();
};

String Multiplicar(){
   return(op1*op3).toString();

};
String dividir(){
   return (op1/op3).toString();
}

String Cubetear(){
   return(op1*op1).toString();
};
String Raiz(){
   return sqrt(op1).toString();
};
}
