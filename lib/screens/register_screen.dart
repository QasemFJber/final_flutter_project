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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Color(0xFF3672E0),
                Color(0xFF6DC5FA),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context,'/login_screen');
                    },
                    child: Image.asset('lib/images/back.png',height: 33,width: 33,),
                  ),
                ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: RegisterWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
