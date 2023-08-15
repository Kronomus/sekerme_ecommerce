import 'package:flutter/material.dart';

class loginDivider extends StatelessWidget {
  const loginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
            child: Divider(
              thickness: 2.5,
                color: Theme.of(context).colorScheme.primary,
            ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),

          child:  Text("or Login with",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,),
          ),

        ),
        Expanded(
          child: Divider(
            thickness: 2.5,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}





// 2


class loginDivider2 extends StatelessWidget {
  const loginDivider2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          child: Divider(
            thickness: 2.5,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),

          child:  Text("or Register with",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,),
          ),

        ),
        Expanded(
          child: Divider(
            thickness: 2.5,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
