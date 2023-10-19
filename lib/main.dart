import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller.dart';

void main()
{
    runApp(GetMaterialApp(home: first(),));
}
class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController t1=TextEditingController();
    TextEditingController t2=TextEditingController();
    controller c=Get.put(controller());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: t1,
          ),
          TextField(
            controller: t2,
          ),
          ElevatedButton(onPressed: () {
            
             c.fun_sum(t1.text, t2.text);
          }, child: Text("Submit")),
          Obx(() => Text("Sum:-${c.sum.value}"))
        ],
      ),
    );
  }
}

 