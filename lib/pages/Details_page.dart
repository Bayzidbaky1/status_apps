import 'package:best_status/pages/appStyle.dart/appStyle.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  var data = Get.arguments;
  
  
    

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text(data[0]['title']),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (_, index) {
              return Card(
                elevation: 4,
                shadowColor: Colors.pink,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black,
                      Colors.indigo,
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          data[0]['title'],
                          style: AppStyle.tile,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'This is a multiline text widget in Flutter. '
                          'It demonstrates how to display text with multiple lines. '
                          'You can specify the maximum number of lines and control the overflow behavior.',
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyle.tile,
                        ),
                       ElevatedButton(onPressed: (){
                     
                       }, child: Text("print")),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                              onPressed: () {
                                FlutterClipboard.copy(
                                    'This is a multiline text widget in Flutter. '
                                    'It demonstrates how to display text with multiple lines. '
                                    'You can specify the maximum number of lines and control the overflow behavior.');
                                Get.snackbar(data[0]['title'], 'Copyed Text');
                              },
                              icon: Icon(
                                Icons.copy,
                                color: Colors.white,
                                size: 30,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
