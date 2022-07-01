part of '../home_screen.dart';

class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final counter = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterCubit, CounterState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          successCounterValueChanged: (value) => counter.value = value,
        );
      },
      child: ValueListenableBuilder(
        valueListenable: counter,
        builder: (context, str, _) {
          return Text(
            counter.value.toString(),
            style: Theme.of(context).textTheme.headline4,
          );
        },
      ),
    );
  }
}
