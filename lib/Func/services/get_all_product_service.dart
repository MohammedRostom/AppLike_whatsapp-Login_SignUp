import 'dart:convert';

import 'package:flutter_applicatioaserwerwr/Func/helper/api.dart';
import 'package:flutter_applicatioaserwerwr/models/usernodels.dart';
import 'package:http/http.dart';

class AllProductsService {
  Future<List<usernodels>> getAllProducts() async {
    List<dynamic> datas = await Api().get(url: 'https://dummyjson.com/users');

    List<usernodels> productsList = [];
    for (int i = 0; i < datas.length; i++) {
      productsList.add(usernodels.fromJson(datas[i]));
    }
    return productsList;
  }
}
