import '../config.dart';

class FormPage extends StatelessWidget {
  final String title;
  final Widget content;
  final bool isMustIcon;
  FormPage({this.title, this.content, this.isMustIcon = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: Lqr().edgeLR(10),
      child: Row(
        children: <Widget>[
          isMustIcon ? Text("*", style: TextStyle(color: Colors.red)) : Container(),
          Container(
            margin: Lqr().edgeR(10),
            child: Text(title, style: TextStyle(fontSize: Lqr().size(14), color: Color(0xFF333333))),
          ),
          Expanded(
            child: content,
          ),
        ],
      ),
    );
  }
}
