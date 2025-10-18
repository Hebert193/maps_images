import 'package:flutter/material.dart';
import 'package:maps_imagens/provider/greate_places.dart';
import 'package:maps_imagens/utilis/app_rotas.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Viagens'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRotas.placeForm);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Consumer<GreatePlaces>(
      child: const Center
      (child: CircularProgressIndicator()),
      ),
    );
  }
}
