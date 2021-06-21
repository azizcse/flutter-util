import 'package:get/get.dart';

class Messages extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'hello':"Hello word",
      'home':'Home menue'
    },
    'en_DE':{
      'hello': 'Hallo Welt',
    }
  };

}