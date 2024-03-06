   child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 83, 83, 83)),
                margin: EdgeInsets.zero,
                padding: EdgeInsets.all(20),
                child: Text(
                  'Bloco de Anotações',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const ListBody(
              children: [
                Text('Todas as Anotações'),
              ],
            ),
            ListTile(
              title: const Text('Sobre o Aplicativo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                );
              },
            ),
          ],
        ),