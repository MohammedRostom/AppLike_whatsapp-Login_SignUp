import 'package:flutter/material.dart';
import 'package:flutter_applicatioaserwerwr/Func/services/get_all_product_service.dart';
import 'package:flutter_applicatioaserwerwr/models/usernodels.dart';
import 'package:flutter_applicatioaserwerwr/widget/listileW.dart';

class chat extends StatelessWidget {
  chat({Key? key, this.emaiWWWWWWW}) : super(key: key);
  var emaiWWWWWWW;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<usernodels>>(
        future: AllProductsService().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<usernodels> users = snapshot.data!;
            return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return ListTielw(
                    post: users[index],
                    email: emaiWWWWWWW,
                  );
                });
          } else {
            return Text("");
          }
        },
      ),
    );
  }
}
