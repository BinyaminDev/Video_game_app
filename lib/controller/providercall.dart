import 'package:flutter/cupertino.dart';
import '../controller/apicall.dart';
import '../model/modelclass.dart';
import 'package:provider/provider.dart';

class DataFetchProvider extends ChangeNotifier {
  Future<List<Games>>? data = createAlbum();
}

createAlbum() {}
