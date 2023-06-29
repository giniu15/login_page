import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 755,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ElevatedButton(
          onPressed: () {
            print('hallo');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            textStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),

            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            padding: EdgeInsets.all(8),
            //content padding inside button
          ),
          child: const Text('sign in'),
        ),
      ),
    );
  }
}
