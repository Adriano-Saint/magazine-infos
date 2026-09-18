import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: const pageAccueil(),
    );
  }
}

class pageAccueil extends StatelessWidget {
  const pageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magazine Infos'),
        centerTitle: true,
        backgroundColor: Colors.pink,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 220,
              child: Image(
                image: const AssetImage('assets/images/magazineInfo.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const PartieTitre(),
            const PartieTexte(),
            const PartieIcone(),
            const PartieRubrique(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Tu as cliqué dessus')));
        },
        child: const Text('Click'),
      ),
    );
  }
}

// 🟦 1. PartieTitre — titre principal + sous-titre
class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          Text(
            'Bienvenue au Magazine Infos',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            'Votre magazine numérique, votre source d\'inspiration',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

// 🟦 2. PartieTexte — paragraphe descriptif
class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: const Text(
        'Magazine Infos est bien plus qu\'un simple magazine d\'informations. '
        'C\'est votre passerelle vers le monde, une source inestimable de '
        'connaissances et d\'actualités soigneusement sélectionnées pour vous '
        'éclairer sur les enjeux mondiaux, la culture, la science, la, et voir '
        'même le divertissement (le jeux).',
        style: TextStyle(fontSize: 14, height: 1.4),
      ),
    );
  }
}

// 🟦 3. PartieIcone — trois actions : téléphone, mail, partage
class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: const Column(
              children: [
                Icon(Icons.phone, color: Colors.pink),
                SizedBox(height: 5),
                Text('TEL', style: TextStyle(color: Colors.pink, fontSize: 12)),
              ],
            ),
          ),
          Container(
            child: const Column(
              children: [
                Icon(Icons.mail, color: Colors.pink),
                SizedBox(height: 5),
                Text(
                  'MAIL',
                  style: TextStyle(color: Colors.pink, fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            child: const Column(
              children: [
                Icon(Icons.share, color: Colors.pink),
                SizedBox(height: 5),
                Text(
                  'PARTAGE',
                  style: TextStyle(color: Colors.pink, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 🟦 4. PartieRubrique — deux images côte à côte, bords arrondis
class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  image: const AssetImage('assets/images/rubrique1.jpg'),
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  image: const AssetImage('assets/images/rubrique2.jpg'),
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
