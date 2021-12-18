import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
  final int index;
  const DetailScreen({
    Key? key,
    required this.index,
  }) : super(key: key);
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kColorWhite,
          shape: Border.all(color: kColorDarkBlue),
          title: const Text(
            'Neon Mobbin',
            style: TextStyle(color: kColorBlack),
          ),
          centerTitle: true,
          titleSpacing: 1,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: BlocBuilder<FilterBloc, FilterState>(builder: (context, state) {
          return state.map(
            initial: (_) => const CircularProgressIndicator(),
            filterMenuState: (state) {
              return Row(children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: SizedBox(
                    width: 200,
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Projekt'),
                        const Text('Patterns'),
                        const Text('Elements')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 200,
                ),
                SizedBox(
                    width: 200,
                    height: 400,
                    child: Hero(
                      tag: widget.index.toString(),
                      child: Image.network(
                        'https://picsum.photos/200/300',
                        fit: BoxFit.cover,
                      ),
                    ))
              ]);
            },
          );
        }));
  }
}
