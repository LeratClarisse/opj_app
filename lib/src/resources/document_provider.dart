import 'dart:async';
import 'dart:convert';
import '../models/document.dart';

class DocumentProvider {
  Future<List<Document>> fetchDocumentList() async {
    const response = '{"documents": [{"id": 1, "docNumber": 1, "title": "Doc1", "file": "doc1.pdf", "category": "DPG" },{"id": 2, "docNumber": 2, "title": "Doc2", "file": "doc2.pdf", "category": "DPS" },{"id": 3, "docNumber": 3, "title": "Doc3", "file": "doc3.pdf", "category": "DPG" },{"id": 4, "docNumber": 4, "title": "Doc4", "file": "doc4.pdf", "category": "DPS" },{"id": 5, "docNumber": 5, "title": "Doc5", "file": "doc5.pdf", "category": "PP" }]}';

    if (response.isNotEmpty) {
      Iterable l = json.decode(response)['documents'];
      List<Document> documents = List<Document>.from(l.map((model) => Document.fromJson(model)));
      // ignore: avoid_print
      print(documents);
      return documents;
    } else {
      throw Exception('Failed to load documents');
    }
  }
}