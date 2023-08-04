import 'package:flutter/material.dart';

class MySocialButton extends StatelessWidget {


 final Function()? onTap;
 final String imagePath;


  const MySocialButton({
    super.key,
    required this.onTap,
    required this.imagePath
  }
  );


  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(10.0),
                decoration : BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.transparent,

          ),
              child: Image.asset(imagePath,
              width: 30,
              height: 30,
              ),
        ),
      ),
      ),
    );

  }
}

