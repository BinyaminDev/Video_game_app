

import 'package:video_game_app/utils/api_uri.dart';
import '../model/modelclass.dart';
import 'package:http/http.dart' as http;

class Controller {
  Future<List<Games>> createAlbum() async 
  {
    
    final response =
        await http.post(Uri.parse(API_URI), 
        headers: <String, String>{
      'Client-ID ': 'xif8z3n5hr8ssza9cx7tg2hdnz3oge',
      'Authorization': 'Bearer u79gq2z217fle1f6of7i2ppfuiudtx',
    });
    
    if (response.statusCode == 200) {
      return gamesFromJson(response.body);
    } else {
      throw Exception('Failed to create Album.');
    }
    
  }
  
}
