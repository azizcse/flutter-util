import 'dart:io';

import 'package:execciseflutter/language/LocalizationService.dart';
import 'package:execciseflutter/language/Messages.dart';
import 'package:execciseflutter/them/ThemService.dart';
import 'package:execciseflutter/them/Thems.dart';
import 'package:execciseflutter/ui/AnimationTest.dart';
import 'package:execciseflutter/ui/BlurryContainerView.dart';
import 'package:execciseflutter/ui/CacheNetworkImageView.dart';
import 'package:execciseflutter/ui/EasyContainerView.dart';
import 'package:execciseflutter/ui/HeroFirst.dart';
import 'package:execciseflutter/ui/appbar/SliverAppBar.dart';
import 'package:execciseflutter/ui/button/button_check.dart';
import 'package:execciseflutter/ui/chat/ChatView.dart';
import 'package:execciseflutter/ui/dropdown/searchable_dropdown.dart';
import 'package:execciseflutter/ui/icontest/icon_test.dart';
import 'package:execciseflutter/ui/media/GalleryPage.dart';
import 'package:execciseflutter/ui/sliver/sliver_appbar_check.dart';
import 'package:execciseflutter/ui/spantext/SpanAbleText.dart';
import 'package:execciseflutter/ui/textanim/TextAnim.dart';
import 'package:execciseflutter/ui/webview/WebViewPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import 'ui/editir/RichEditor.dart';
import 'ui/text/TextDecoration.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        color: context.theme.backgroundColor,
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              InkWell(
                child: Text("Easy container"),
                onTap: () => Get.to(EasyContainerView()),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Blurry container"),
                onTap: () => Get.to(BlurryContainerView()),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Cachenetwork image"),
                onTap: () => Get.to(CacheNetworkImageView()),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Animation"),
                onTap: () => Get.to(HeroFirst()),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Spacer"),
                onTap: () => Get.to(SpacerTest()),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Them change"),
                onTap: () => ThemeService().switchTheme(),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Language change"),
                onTap: () => LocalizationService().changeLocale("Turkey"),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Play video"),
                onTap: () => Get.to(WebViewPage()),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Button check"),
                onTap: () => Get.to(ButtonView()),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Spanable Text"),
                onTap: () => Get.to(SpanAbleText()),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Sliver tab"),
                onTap: () => Get.to(SliverAppBarPage()),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Sliver appbar"),
                onTap: () => Get.to(SliverAppbarCheck()),
              ),
              SizedBox(
                height: 20,
              ),
              /*InkWell(
                child: Text("TextAnim"),
                onTap: () => Get.to(TextAnim()),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Editor"),
                onTap: () => Get.to(RichTextEditors()),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Icon test"),
                onTap: () => Get.to(IconTestPage()),
              ),*/

              /*InkWell(
                child: Text("Icon test"),
                onTap: () => Get.to(TextLengthCheck()),
              ),*/
              InkWell(
                child: Text("Dropdown"),
                onTap: () => Get.to(SearchableDropdown()),
              ),

            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Example"),
      ),
      body: MyHomePage(title: 'hello'.tr),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum AppState {
  free,
  picked,
  cropped,
}

class _MyHomePageState extends State<MyHomePage> {
  late AppState state;
  File? imageFile;

  @override
  void initState() {
    super.initState();
    state = AppState.free;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text('hello'.tr),
              SizedBox(
                height: 100,
              ),
              InkWell(
                  child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  var locale = Locale('en', 'DE');
                  Get.updateLocale(locale);
                },
                child: Text('TextButton'),
              ))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {
          if (state == AppState.free)
            _pickImage();
          else if (state == AppState.picked)
            _cropImage();
          else if (state == AppState.cropped) _clearImage();
        },
        child: _buildButtonIcon(),
      ),
    );
  }

  Widget _buildButtonIcon() {
    if (state == AppState.free)
      return Icon(Icons.add);
    else if (state == AppState.picked)
      return Icon(Icons.crop);
    else if (state == AppState.cropped)
      return Icon(Icons.clear);
    else
      return Container();
  }

  Future<Null> _pickImage() async {
    final pickedImage =
        await ImagePicker().getImage(source: ImageSource.gallery);
    imageFile = pickedImage != null ? File(pickedImage.path) : null;
    if (imageFile != null) {
      setState(() {
        state = AppState.picked;
      });
      print("Image file path : ${imageFile?.absolute.path}");
    } else {
      print("Image null -------------------");
    }
  }

  Future<Null> _cropImage() async {
    File? croppedFile = await ImageCropper.cropImage(
        sourcePath: imageFile!.path,
        aspectRatioPresets: Platform.isAndroid
            ? [
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio16x9
              ]
            : [
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio5x3,
                CropAspectRatioPreset.ratio5x4,
                CropAspectRatioPreset.ratio7x5,
                CropAspectRatioPreset.ratio16x9
              ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.amber,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          title: 'Cropper',
        ));
    if (croppedFile != null) {
      imageFile = croppedFile;
      setState(() {
        state = AppState.cropped;
      });
    }
  }

  void _clearImage() {
    imageFile = null;
    setState(() {
      state = AppState.free;
    });
  }
}
