import 'package:flutter/material.dart';

void main() => runApp(const SonhosReveladosApp());

class SonhosReveladosApp extends StatelessWidget {
  const SonhosReveladosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sonhos Revelados',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF5E35B1),
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF9575CD),
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  static const pages = [
    _WelcomePage(),
    _DreamJournalPage(),
    _DictionaryPage(),
    _AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[index]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (value) => setState(() => index = value),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.auto_awesome), label: 'Início'),
          NavigationDestination(icon: Icon(Icons.menu_book), label: 'Diário'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Símbolos'),
          NavigationDestination(icon: Icon(Icons.info_outline), label: 'Sobre'),
        ],
      ),
    );
  }
}

class _WelcomePage extends StatelessWidget {
  const _WelcomePage();
  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(24),
    children: const [
      SizedBox(height: 32),
      Icon(Icons.nightlight_round, size: 72),
      SizedBox(height: 20),
      Text('Sonhos Revelados', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
      SizedBox(height: 12),
      Text('Registre seus sonhos e explore possíveis significados de símbolos de forma simples e reflexiva.'),
      SizedBox(height: 28),
      Card(child: ListTile(
        leading: Icon(Icons.edit_note),
        title: Text('Registre ao acordar'),
        subtitle: Text('Anote pessoas, lugares, emoções, cores e acontecimentos que você lembrar.'),
      )),
      Card(child: ListTile(
        leading: Icon(Icons.psychology_alt_outlined),
        title: Text('Interpretação responsável'),
        subtitle: Text('Os significados são simbólicos e não representam previsões ou aconselhamento profissional.'),
      )),
    ],
  );
}

class _DreamJournalPage extends StatefulWidget {
  const _DreamJournalPage();
  @override
  State<_DreamJournalPage> createState() => _DreamJournalPageState();
}
class _DreamJournalPageState extends State<_DreamJournalPage> {
  final controller = TextEditingController();
  final dreams = <String>[];
  @override
  void dispose() { controller.dispose(); super.dispose(); }
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(children: [
      const Align(alignment: Alignment.centerLeft, child: Text('Meu diário', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
      const SizedBox(height: 12),
      TextField(controller: controller, minLines: 3, maxLines: 6, decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'O que você sonhou?')),
      const SizedBox(height: 10),
      FilledButton.icon(onPressed: () {
        final value = controller.text.trim();
        if (value.isEmpty) return;
        setState(() { dreams.insert(0, value); controller.clear(); });
      }, icon: const Icon(Icons.save), label: const Text('Salvar sonho')),
      const SizedBox(height: 12),
      Expanded(child: dreams.isEmpty
        ? const Center(child: Text('Seus registros aparecerão aqui.'))
        : ListView.builder(itemCount: dreams.length, itemBuilder: (_, i) => Card(child: ListTile(title: Text(dreams[i]))))),
    ]),
  );
}

class _DictionaryPage extends StatelessWidget {
  const _DictionaryPage();
  static const symbols = {
    'Água': 'Pode estar associada a emoções, mudanças e ao estado interior.',
    'Casa': 'Pode simbolizar identidade, segurança, memória ou diferentes aspectos da vida.',
    'Voo': 'Pode estar ligado a liberdade, ambição, autonomia ou desejo de superar limites.',
    'Queda': 'Pode refletir insegurança, perda de controle ou transições.',
    'Caminho': 'Pode representar escolhas, direção e fases de uma jornada pessoal.',
    'Chuva': 'Pode sugerir renovação, intensidade emocional ou necessidade de liberação.',
  };
  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(20),
    children: [
      const Text('Símbolos', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      const Text('Possíveis leituras simbólicas; o contexto pessoal de cada sonho é importante.'),
      const SizedBox(height: 12),
      ...symbols.entries.map((e) => Card(child: ExpansionTile(title: Text(e.key), children: [Padding(padding: const EdgeInsets.all(16), child: Text(e.value))]))),
    ],
  );
}

class _AboutPage extends StatelessWidget {
  const _AboutPage();
  @override
  Widget build(BuildContext context) => const ListView(
    padding: EdgeInsets.all(24),
    children: [
      Text('Sobre', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
      SizedBox(height: 16),
      Text('Sonhos Revelados é uma ferramenta de registro e reflexão. Interpretações de sonhos são subjetivas e não constituem diagnóstico, tratamento, previsão do futuro ou aconselhamento médico, psicológico, jurídico ou financeiro.'),
      SizedBox(height: 16),
      Text('Privacidade: esta versão não exige conta e não envia os textos digitados para servidores externos.'),
    ],
  );
}
