import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/advicer_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return InkResponse(
      onTap: () {
        BlocProvider.of<AdvicerBloc>(context).add(RequestEvent());
      },
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            color: themedata.colorScheme.secondary,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text(
              'Get advice',
              style: themedata.textTheme.displayLarge,
            ),
          ),
        ),
      ),
    );
  }
}
