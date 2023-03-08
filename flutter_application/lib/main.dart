import 'package:flutter/material.dart';
import 'package:xml/xml.dart' as xml;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: XmlDataDemo(),
    );
  }
}

class XmlDataDemo extends StatefulWidget {
  const XmlDataDemo({Key? key}) : super(key: key);

  @override
  State<XmlDataDemo> createState() => _XmlDataDemoState();
}

class _XmlDataDemoState extends State<XmlDataDemo> {
  List _students = [];

  void _xmlData() async {
    final dataList = [];

    const studentXml = '''<ns0:Data 
    xmlns:ns0="urn:schemas-microsoft-com:office:spreadsheet" 
    xmlns:ns1="[http://www.w3.org/TR/REC-html40"](http://www.w3.org/TR/REC-html40%22) 
    ns0:Type="String">
    <ns1:Font ns1:Color="#808080">Here's </ns1:Font>
    <ns1:Font ns1:Color="#808080">your</ns1:Font>
    <ns1:Font ns1:Color="#808080"> </ns1:Font>
    <ns1:Font ns1:Color="#595959">first</ns1:Font>
    <ns1:Font ns1:Color="#808080"> </ns1:Font>
    <ns1:Font ns1:Color="#404040">word</ns1:Font>
    <ns1:Font ns1:Color="#808080"> </ns1:Font>
    <ns1:Font ns1:Color="#262626">to</ns1:Font>
    <ns1:Font ns1:Color="#808080"> </ns1:Font>
    <ns1:Font ns1:Color="#0D0D0D">learn</ns1:Font>
    <ns1:Font ns1:Color="#808080">:</ns1:Font>ns1:Font\n{</ns1:Font>
    <ns1:Font ns1:Color="#FF0000">اللَّه</ns1:Font>ns1:Font}\nis God's name, very much like you have a given name.  While some may translate {</ns1:Font>
    <ns1:Font ns1:Color="#00FF00">اللَّه</ns1:Font>ns1:Font} to "God", this may not be the most accurate.  Because "God" is reserved for the word </ns1:Font>
    <ns1:Font ns1:Color="#0000FF">إِلَه</ns1:Font>ns1:Font, which we will learn later in this lesson.  So in the simplest terms, "God" (</ns1:Font>إِلَ<ns1:Font ns1:Color="#FF0000">ه</ns1:Font>ns1:Font) is more like the 'type' (analogous to humankind as our type) while "</ns1:Font>
    <ns1:Font ns1:Color="#FF0000">A</ns1:Font>
    <ns1:Font ns1:Color="#00FF00">ll</ns1:Font><ns1:Font ns1:Color="#0000FF">a</ns1:Font>ns1:I<ns1:Font ns1:Color="#FF0000">h</ns1:Font>
    </ns1:I>ns1:Font" ({اللَّه}) is the actual 'name' (very much like the everyday names "David", "Adam", "Jacob"...etc)</ns1:Font>
    </ns0:Data>''';

    final document = xml.XmlDocument.parse(studentXml);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
