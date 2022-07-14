
import 'package:flutter/material.dart';

class Lesson13 extends StatelessWidget {
  const Lesson13({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('課題13'),
        ),
        body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                    alignment: AlignmentDirectional.center,
                    children:[
                      Container(
                          width: MediaQuery.of(context).size.width * 0.36,
                          height: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images/glace.jpg"),
                            ),
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width * 0.03
                            ),
                          )
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.01,
                          right: 0,
                          child: Container(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.008
                              ),
                              alignment: AlignmentDirectional.center,
                              width: MediaQuery.of(context).size.width * 0.08,
                              height: MediaQuery.of(context).size.width * 0.05,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width * 0.9
                                  ),
                                  color: Colors.red
                              ),
                              child: const FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    "NEW",
                                    style: TextStyle(
                                        color: Colors.white
                                    )
                                  )
                              )
                          )
                      )
                    ]
                ),
                Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.3,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images/mountain.jpeg"),
                            ),
                            shape: BoxShape.circle,
                          )
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.02,
                          right: MediaQuery.of(context).size.width * 0.02,
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.05,
                              height: MediaQuery.of(context).size.width * 0.05,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red
                              )
                          )
                      )
                    ]
                )
              ]
            )
        )
    );
  }
}