import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() => runApp(const PDFReaderApp());

class PDFReaderApp extends StatelessWidget {
  const PDFReaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PDFViewPage(),
    );
  }
}

class PDFViewPage extends StatefulWidget {
  const PDFViewPage({super.key});

  @override
  State<PDFViewPage> createState() => _PDFViewPageState();
}

class _PDFViewPageState extends State<PDFViewPage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  String? _pdfUrl;
  bool _isLocalFile = false;
  final TextEditingController _urlController = TextEditingController();

  void _seleccionarPdfLocal() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      setState(() {
        _pdfUrl = result.files.single.path;
        _isLocalFile = true;
      });
    }
  }

  void _abrirPdfUrl() {
    setState(() {
      _pdfUrl = _urlController.text;
      _isLocalFile = false;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Reader App'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.file_open, color: Colors.white),
            onPressed: _seleccionarPdfLocal,
            tooltip: 'Abrir PDF desde el dispositivo',
          ),
          IconButton(
            icon: const Icon(Icons.link, color: Colors.white),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Ingrese la URL del PDF'),
                    content: TextField(
                      controller: _urlController,
                      decoration: const InputDecoration(
                          hintText: 'https://example.com/mi.pdf'),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          _abrirPdfUrl();
                          Navigator.of(context).pop();
                        },
                        child: const Text('Abrir'),
                      ),
                    ],
                  );
                },
              );
            },
            tooltip: 'Abrir PDF desde una URL',
          ),
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: _pdfUrl != null
          ? _isLocalFile
              ? SfPdfViewer.file(File(_pdfUrl!), key: _pdfViewerKey)
              : SfPdfViewer.network(_pdfUrl!, key: _pdfViewerKey)
          : const Center(
              child: Text('No se ha seleccionado un PDF'),
            ),
    );
  }
}
