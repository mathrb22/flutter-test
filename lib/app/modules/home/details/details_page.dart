import 'package:fluter_test/app/data/controller/home_controller/home_controller.dart';
import 'package:fluter_test/app/widgets/margin_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
//repository and controller  injection bindings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Container(
        child: GetX<HomeController>(initState: (state) {
          Get.find<HomeController>().getAll();
        }, builder: (builder) {
          return builder.postList.length < 1
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(builder.postList[index].title),
                      subtitle: Text(builder.postList[index].body),
                    );
                  },
                  itemCount: builder.postList.length,
                );
        }),
      ),
    );
  }
}
