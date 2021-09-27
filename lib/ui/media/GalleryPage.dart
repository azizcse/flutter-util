import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:photo_manager/photo_manager.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  void initState() {
    super.initState();
    _askPermission();
  }

  void _askPermission() async {
    if (await Permission.storage.request().isGranted) {
      List<AssetPathEntity> list = await PhotoManager.getAssetPathList();
      list.forEach((element) async {
        var assetList = await element.assetList;
        assetList.forEach((item) async {
          File? file = await item.file;
          print("File path ${file!.path}");
        });
      });

      /*final List<Album> imageAlbums = await PhotoGallery.listAlbums(
        mediumType: MediumType.image
      );
      if(imageAlbums == null){
        print("Image null----------");
        return;
      }

      imageAlbums.forEach((album) async {
        var mediaPage = await album.listMedia();
        mediaPage.items.forEach((medium) async {
          File path = await medium.getFile();
          print("File path ${path.absolute.path}");
        });
      });*/
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Center"),
      ),
    );
  }
}
