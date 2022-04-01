import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

 
 class HomeScreen  extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
     int contador = 10;

   @override
   
    Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar( title: Text("Contador - Jimena Insuaty"), backgroundColor: Color.fromRGBO(165, 105, 189,40),),
        //elevation: 5.0,
        body: Center(
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              Text("Numero de clicks",style: TextStyle(fontSize : 35.0, color: Colors.deepPurple)),
              Text("$contador",style: TextStyle(fontSize : 50.0, color: Colors.deepPurple, fontWeight: FontWeight.bold)),
          ],  
        ) ,  
       ),
       floatingActionButton: _botones(),
    );
  
    }
     Widget _botones(){
    return Row(
      children: <Widget>[
        SizedBox(width: 40,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), backgroundColor: Color.fromRGBO(165, 105, 189,40),onPressed: restablecer),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove),backgroundColor: Color.fromRGBO(165, 105, 189,40), onPressed: resta),
        SizedBox(width: 100,),
        FloatingActionButton(child: Icon(Icons.add),backgroundColor: Color.fromRGBO(165, 105, 189,40), onPressed: suma)
      ],
    );
  }

   void suma(){
    setState(()=>{contador++});
  }
  void resta(){
    setState(()=>{contador--});
  }
  void restablecer(){
    setState(()=>{contador = 0});
  }
  
}
 