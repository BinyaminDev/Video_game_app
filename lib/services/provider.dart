import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../model/modelclass.dart';
import '../controller/providercall.dart';

final List<SingleChildWidget> providers=
[
  ChangeNotifierProvider(create: (_)=>DataFetchProvider()),
];


