import 'package:flutter/material.dart';
import 'package:shopp/providers/counter.dart';

class CounterProduct extends StatefulWidget {
  const CounterProduct({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterProduct> createState() => _CounterProductState();
}

class _CounterProductState extends State<CounterProduct> {
  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('exemplo contador'),
      ),
      body: Column(
        children: [
          Text(CounterProvider.of(context)?.state.value.toString() ?? '0'),
          IconButton(
            onPressed: () {
              setState(() {
                //print(CounterProvider.of(context)?.state.inc);
                provider?.state.inc();
              });
              //print(CounterProvider.of(context)?.state.value.toString()?? '0');
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.desc();
                //print(CounterProvider.of(context)?.state.desc);
              });
              //print(CounterProvider.of(context)?.state.value.toString()?? '0');
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
