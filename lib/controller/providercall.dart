
import 'package:flutter/cupertino.dart';
import '../controller/apicall.dart';
import '../model/modelclass.dart';



class DataFetchProvider extends ChangeNotifier
 {
     Future <List<Games>> data = createAlbum();
     
    
      
 }
 
 