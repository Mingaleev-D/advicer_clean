import 'package:advicer_clean/core/provider/theme_service.dart';
import 'package:advicer_clean/features/advicer/presentation/widgets/advicer_field.dart';
import 'package:advicer_clean/features/advicer/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../blocs/advicer_bloc.dart';
import '../../widgets/error_message.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Advicer',
          style: themeData.textTheme.displayLarge,
        ),
        actions: [
          Switch(
              value: Provider.of<ThemeService>(context).isDarkModeOn,
              onChanged: (value) =>
                  Provider.of<ThemeService>(context, listen: false)
                      .toggleTheme())
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: BlocProvider(
          create: (context) => AdvicerBloc(),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<AdvicerBloc, AdvicerState>(
                  builder: (context, state) {
                    if (state is AdvicerLoading) {
                      return Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              themeData.colorScheme.secondary),
                        ),
                      );
                    } else if (state is AdvicerSuccess) {
                      return const Center(
                        child: AdvicerField(
                          fields: 'Demo advicer',
                        ),
                      );
                    } else if (state is AdvicerError) {
                      return Center(
                        child: ErrorMessage(message: state.message),
                      );
                    }
                    return const SizedBox();
                  },
                ),
              ),
              const SizedBox(
                  height: 200,
                  child: Center(
                    child: CustomButton(),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

// CircularProgressIndicator(
//   valueColor: AlwaysStoppedAnimation<Color>(
//       themeData.colorScheme.secondary),
// ),

// Text(
//   'Advice',
//   style: themeData.textTheme.headlineMedium,
//   textAlign: TextAlign.center,
