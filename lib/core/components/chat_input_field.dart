import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChatInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 65,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(splashColor: Colors.transparent),
                      child: TextField(
                        autofocus: false,
                        maxLines: null,
                        // expands: true,

                        style: TextStyle(
                            fontSize: 11.0.sp, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0XFF2B2B2B),
                            hintText: 'Type something..',
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 2.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF2B2B2B)),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF2B2B2B)),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            prefixIcon: Icon(
                              Icons.tag_faces,
                              color: Colors.white,
                            ),
                            suffixIcon: Icon(
                              Icons.attachment,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 15),
          Container(
            padding: const EdgeInsets.all(13.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  // end: Alignment.bottomRight,
                  colors: [Color(0xFFFFCEC2), Color(0xFFFF3100)],
                ),
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle),
            child: InkWell(
              onTap: () {
                print('IconPressed');
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
