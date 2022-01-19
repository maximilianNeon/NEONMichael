import 'dart:io';
import 'dart:typed_data';
import 'package:file_saver/file_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:html' as html;
import 'package:file_selector/file_selector.dart';

abstract class LocalDataSource {
  Future saveProjectFilesToLocalDevice({required String projectTitle});
}

class LocalDataSourceImpl extends LocalDataSource {
  @override
  Future saveProjectFilesToLocalDevice({required String projectTitle}) async {
     


    FileSaver.instance.saveFile("3", Uint8List(0), "" , mimeType: MimeType.TEXT);
     
  }
}
