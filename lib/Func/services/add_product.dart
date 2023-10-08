// // import 'package:storeapp/helper/api.dart';
// // import 'package:storeapp/models/product_model.dart';

// // class AddProduct {
// //   Future<ProductModel> addProduct(
// //       {required String title,
// //       required String price,
// //       required String desc,
// //       required String image,
// //       required String category,
// //       required id}) async {
// //     Map<String, dynamic> data =
// //         await Api().post(url: 'https://fakestoreapi.com/products', body: {
// //       'title': title,
// //       'price': price,
// //       'description': desc,
// //       'image': image,
// //       'category': category,
// //     });

// //     return ProductModel.fromJson(data);
// //   }
// // }


// class AddProduct {
//   Future<user> addProduct(
//       {required String name, required String jop, required id}) async {
//     Map<String, dynamic> data =
//         await Api_helperget().post(url: 'https://reqres.in/api/users', body: {
//       'id': id,
//       'name': name,
//       'jop': jop,
//     });
//     print(data);
//     return Post.fromJson(data);
//   }
// }
