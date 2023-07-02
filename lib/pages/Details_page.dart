import 'package:best_status/controllers/details_controller.dart';
import 'package:best_status/pages/appStyle.dart/appStyle.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class DetailsPage extends StatefulWidget {
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final controller = Get.put(DetailsController());
  var data = Get.arguments;

  @override
  void initState() {
    super.initState();
    print(data[2]['slug']);
    controller.getData(data[2]['slug']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(data[0]['title']),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return controller.detailsData.value.data!.length == 0 ||
                  controller.detailsData.value.data!.isEmpty
              ? Center(
                  child: Text(
                    'No Data Found!',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                )
              : ListView.builder(
                  itemCount: controller.detailsData.value.data!.length,
                  itemBuilder: (_, index) {
                    final apiData = controller.detailsData.value.data![index];
                    return Card(
                      elevation: 4,
                      shadowColor: Colors.pink,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.black,
                                Colors.indigo,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
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
                                apiData.title!,
                                maxLines: 10,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyle.tile,
                              ),
                              ElevatedButton(
                                  onPressed: () {}, child: Text("print")),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                    onPressed: () {
                                      FlutterClipboard.copy(apiData.title!);
                                      Get.snackbar(
                                          apiData.title!, 'Copyed Text');
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
                  });
        }
      }),
    );
  }
}
