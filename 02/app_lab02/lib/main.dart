import 'package:flutter/material.dart';

//import './rowcolumn_page.dart';
//import './stackalign_page.dart';
//import './expandedpadding_page.dart';
//import './complexlayout_page.dart';
//
//import './text_icon_elevatedbutton_page.dart';
//import './image_textfield_page.dart';
//import './listview_page.dart';
import './widgets_combinados_page.dart';

/*
Row y Column: Útiles para organizar widgets en horizontal y vertical.
Stack y Align: Permiten superponer widgets y alinear elementos en posiciones específicas.
Expanded: Ayuda a que los widgets ocupen el espacio disponible.
Padding: Agrega espacio alrededor de los widgets.
*/
/*
Text: Muestra texto personalizado con diferentes estilos.
Icon: Muestra iconos de la biblioteca de Material Design.
Image: Carga imágenes de la red o del dispositivo.
ElevatedButton: Crea botones con acción.
TextField: Permite la entrada de texto.
ListView: Muestra listas desplazables de widgets.
*/
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const RowColumnPage(),
      //home: const StackAlignPage(),
      //home: const ExpandedPaddingPage(),
      //home: const ComplexLayoutPage(),
      //home: const TextIconElevatedButtonPage(),
      //home: const ImageTextFieldPage(),
      //home: ListViewPage(),
      home: const WidgetsCombinadosPage(),
    );
  }
}
