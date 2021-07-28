import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:popover/popover.dart';

class LabelsPage extends StatelessWidget {
  File image;

  LabelsPage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Labels Page'),
      ),
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: FileImage(image),
                fit: BoxFit.fill,
              ),
            ),
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
              child: new Container(
                decoration:
                new BoxDecoration(color: Colors.grey.withOpacity(0.3)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Button1(),
                    const Button2(),
                    const Button3(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  const Button1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [BoxShadow(color: Colors.transparent, blurRadius: 5)],
      ),
      child: GestureDetector(
        child: const Center(child: Text('Label 1', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
        onTap: () {
          showPopover(
            context: context,
            transitionDuration: const Duration(milliseconds: 150),
            bodyBuilder: (context) => const ListItems(),
            onPop: () => print('Popover was popped!'),
            direction: PopoverDirection.bottom,
            width: 200,
            height: 400,
            arrowHeight: 15,
            arrowWidth: 30,
            backgroundColor: Colors.transparent,
          );
        },
      ),
    );
  }
}
class Button2 extends StatelessWidget {
  const Button2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [BoxShadow(color: Colors.transparent, blurRadius: 5)],
      ),
      child: GestureDetector(
        child: const Center(child: Text('Label 2', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
        onTap: () {
          showPopover(
            context: context,
            transitionDuration: const Duration(milliseconds: 150),
            bodyBuilder: (context) => const ListItems(),
            onPop: () => print('Popover was popped!'),
            direction: PopoverDirection.bottom,
            width: 200,
            height: 400,
            arrowHeight: 15,
            arrowWidth: 30,
            backgroundColor: Colors.transparent,
          );
        },
      ),
    );
  }
}

class Button3 extends StatelessWidget {
  const Button3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [BoxShadow(color: Colors.transparent, blurRadius: 5)],
      ),
      child: GestureDetector(
        child: const Center(child: Text('Label 3', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
        onTap: () {
          showPopover(
            context: context,
            transitionDuration: const Duration(milliseconds: 150),
            bodyBuilder: (context) => const ListItems(),
            onPop: () => print('Popover was popped!'),
            direction: PopoverDirection.bottom,
            width: 200,
            height: 400,
            arrowHeight: 15,
            arrowWidth: 30,
            backgroundColor: Colors.transparent,
          );
        },
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                  ..pop()
                  ..push(
                    MaterialPageRoute<SecondRoute>(
                      builder: (context) => SecondRoute(),
                    ),
                  );
              },
              child: Container(
                height: 50,
                color: Colors.grey[700],
                child: const Center(child: Text('Machine Stats', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),)),
              ),
            ),
            const Divider(thickness: 20, color: Colors.transparent),
            Container(
              height: 50,
              color: Colors.grey[700],
              child: const Center(child: Text('Total Uptime : 23.5 minutes', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),)),
            ),
            const Divider(),
            Container(
              height: 50,
              color: Colors.grey[700],
              child: const Center(child: Text('Total Downtime : 0', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),)),
            ),
            const Divider(),
            Container(
              height: 50,
              color: Colors.grey[700],
              child: const Center(child: Text('Last Maint : 15-07-2021', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),)),
            ),
            const Divider(),
            Container(
              height: 50,
              color: Colors.grey[700],
              child: const Center(child: Text('Addition Info.', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),)),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
