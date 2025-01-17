import 'package:flutter/material.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Images Examples'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Display Internet Images'),
              Tab(text: 'Fade In with Placeholder'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DisplayInternetImagesExample(),
            FadeInImagesPlaceholderExample(),
          ],
        ),
      ),
    );
  }
}

class DisplayInternetImagesExample extends StatelessWidget {
  const DisplayInternetImagesExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/007.png', // Nueva URL
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return const Center(
            child: CircularProgressIndicator(), // Indicador de carga
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return const Center(
            child: Icon(Icons.error, size: 50, color: Colors.red), // Manejo de error
          );
        },
      ),
    );
  }
}


class FadeInImagesPlaceholderExample extends StatelessWidget {
  const FadeInImagesPlaceholderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/loading.gif', // Placeholder local
        image: 'https://www.elimparcial.com/resizer/v2/7RMHODFSDJAMNHG6SDPN4N3GLI.jpg?auth=456b73d426d09fac0a57b61c20afb76b014bbb983e45c41909dd9ce732d4319b&smart=true&width=1200&height=800&quality=70', // Nueva URL
        fadeInDuration: const Duration(seconds: 10),
        fadeOutDuration: const Duration(seconds: 10),
        placeholderErrorBuilder: (context, error, stackTrace) {
          return const Icon(Icons.error, size: 50, color: Colors.red); 
        },
      ),
    );
  }
}
