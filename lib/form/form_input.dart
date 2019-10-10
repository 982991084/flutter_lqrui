import '../config.dart';

class FormInputItem extends StatelessWidget {
  // 基础属性
  final TextEditingController controller;
  final int maxLines;
  final TextInputType keyboardType;
  final String Function(String) validator;
  final int maxLength;
  final bool enabled;
  // form属性
  final String title;
  final String hintText;
  final bool isMustIcon;

  const FormInputItem({
    Key key,
    // 基础属性
    this.controller,
    this.maxLines,
    this.keyboardType,
    this.validator,
    this.maxLength,
    this.enabled = true,
    // form属性
    this.title,
    this.hintText,
    this.isMustIcon = false,
  }) : super(key: key);

  Widget content() {
    return TextFormField(
      enabled: enabled,
      autofocus: false,
      controller: controller,
      maxLines: maxLines != null ? maxLines : 1,
      maxLength: maxLength != null ? maxLength : null,
      style: TextStyle(fontSize: Lqr().size(14), textBaseline: TextBaseline.alphabetic),
      // obscureText: true,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        counterText: '',
        hintText: hintText,
        border: InputBorder.none,
        hintStyle: TextStyle(
          color: Color(0xFFb9b8b8),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return title == null ? content() : FormPage(title: title, content: content(), isMustIcon: isMustIcon);
  }
}
