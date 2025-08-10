import 'package:flutter/material.dart';

class calculatorButton extends StatelessWidget {

  const calculatorButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(24.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            backgroundColor: Colors.grey[800],
          ),
          onPressed: (){}, child: Text("1",
        style: TextStyle(
            fontSize: 25,
            color: Colors.white
        ),
      )

      ),
    );
  }
}