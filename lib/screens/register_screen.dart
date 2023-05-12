import 'package:final_flutter_project/widgets/register_widget.dart';
import 'package:flutter/material.dart';


class RegiserPage extends StatefulWidget {
  const RegiserPage({Key? key}) : super(key: key);

  @override
  State<RegiserPage> createState() => _RegiserPageState();
}

class _RegiserPageState extends State<RegiserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterWidget(),
    );
  }
}
