import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class FeedMyRequestController extends GetxController{

  // final dataList = GetStorage().read<List<Map<String, dynamic>>>('dataList') ?? [];
  final List<Map<String, dynamic>>? dataList = GetStorage().read<List<Map<String, dynamic>>>('dataList');


 // String name =  dataList["Patient_Name"] as String;

}