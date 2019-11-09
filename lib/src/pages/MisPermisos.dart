import 'package:flutter/material.dart';
class MisPermisos extends StatelessWidget {
        
  var permisos =['Juliaca, Paseo', 'Puno, Viaje'];
  var estado =[ 'Vigente', 'Finalizado'];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: Text('Mis Permisos'),
          backgroundColor: Colors.redAccent,

      ),
      body: ListView(
        children: _lista()
      ),
    );
  }
  List<Widget> _lista(){
    
    return permisos.map((item) {
      return Column(

        children: <Widget>[
          ListTile(
            title: Text(item +''),
            subtitle: Text ('Finalizado'),
            
            leading: Text ('17/05/19 3:00 pm \n 15/10/19 12:00 pm'),
            trailing: Text('12:00'),
           
          ),
          Divider()
        ],
      );
    }).toList();
 

  
  }
}