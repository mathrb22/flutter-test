import 'package:fluter_test/app/data/controller/home_controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomePage extends GetView<HomeController> {
//repository and controller  injection bindings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Container(
        child: GetX<HomeController>(initState: (state) {
          Get.find<HomeController>().getAll();
        }, builder: (_) {
          print(_);
          return _.postList.length < 1
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text(_.postList[index].title),
                        subtitle: Text(_.postList[index].body),
                        trailing: Icon(Icons.more_vert),
                      ),
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      elevation: 5,
                    );
                  },
                  itemCount: _.postList.length,
                );
        }),
      ),
    );
  }
}
