import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class settinges extends StatefulWidget {
  settinges({this.usernameEmailinprofilePage});
  var usernameEmailinprofilePage;
  @override
  State<settinges> createState() => _settingesState();
}

class _settingesState extends State<settinges> {
  File? fileImage;
  var imgPicker = ImagePicker();
  var downloadURL;

  Future<void> uploadImageFromCamera() async {
    var pickedImage = await imgPicker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      var imagePath = pickedImage.path;
      fileImage = File(imagePath);
      var imageName = basename(imagePath);

      // Start uploading to Firebase Storage
      var storageReference = FirebaseStorage.instance.ref("images/$imageName");
      await storageReference.putFile(fileImage!);
      downloadURL = await storageReference.getDownloadURL();

      print(downloadURL);

      // End uploading to Firebase Storage
      setState(() {});
    }
  }

  Future<void> uploadImageFromGallery() async {
    var pickedImage = await imgPicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      var imagePath = pickedImage.path;
      fileImage = File(imagePath);
      var imageName = basename(imagePath);

      // Start uploading to Firebase Storage
      var storageReference = FirebaseStorage.instance.ref("images/$imageName");
      await storageReference.putFile(fileImage!);
      downloadURL = await storageReference.getDownloadURL();

      print(downloadURL);

      // End uploading to Firebase Storage
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blue,
                        width: 10,
                      )),
                  child: downloadURL != null
                      ? CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage("$downloadURL"),
                        )
                      : CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.grey,
                        )),
              SizedBox(
                height: 25,
              ),
              Text(
                "${widget.usernameEmailinprofilePage}",
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: uploadImageFromGallery,
                  child: Text("Change picture"))
            ],
          ),
        ),
      ),
    );
  }
}
