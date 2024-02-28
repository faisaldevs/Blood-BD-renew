import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReceiverRequest extends StatelessWidget {
  const ReceiverRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              actions: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.search),),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              height: Get.height,
              width: Get.width,
              color: Colors.white12,
            )
          ],
        ),
      ),
    );
  }
}

