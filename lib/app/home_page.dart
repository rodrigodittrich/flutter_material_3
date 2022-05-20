import 'package:flutter/material.dart';
import 'package:flutter_material_3/app/change_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [  
            Padding(              
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                title: Text("Material ${ChangeController().material}"),
                trailing: Switch(
                  activeColor: Theme.of(context).colorScheme.primary,
                  value: ChangeController().material3.value,
                  onChanged: (value) {
                    ChangeController().material3.value = value;
                    ChangeController().material = 2;
                    if(value) ChangeController().material = 3;                 
                  } 
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () { 
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text("Exemplo Material ${ChangeController().material}"),
                    content: Text("Exemplo Material ${ChangeController().material}"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );         
              }, 
              child: const Text("Show Dialog", style: TextStyle(fontSize: 20))
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 50,
              width: 200,
              child: Card(
                child: Center(
                  child: Text(
                    "Card Material ${ChangeController().material}", 
                    style: const TextStyle(fontSize: 20))
                  ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),  
      ),
    );    
  }
}