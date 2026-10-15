// ignore_for_file: avoid_print, equal_elements_in_set

void main() {
  final ime = 'Antonija';
  int brojVjezbe = 1;
  String? napomena;
  final teme = <String>['Dart', 'Flutter', 'Git'];
  final oznake = <String>{'novo', 'novo', 'vjezba'};
  final bodovi = <String, int>{'Ana': 80, 'Ivan': 55};

  teme.add('React');
  bodovi['Mia'] = 70;
  napomena = 'Prvi samostalni rad';

  print('Student: $ime');
  print('Vjezba: $brojVjezbe');
  print(napomena ?? 'Bez napomene');
  print(teme[0]);
  print(teme);
  print(oznake.length);
  print(bodovi['Mia'] ?? 0);

  final zadaci = <Zadatak>[
    const Zadatak(naslov: 'Instalacija', zavrsen: true),
    const Zadatak(naslov: 'Git'),
    const Zadatak(naslov: 'Dart'),
  ];

  // Prvi zadatak: Predviđanje - otvorenih i dalje bit 2 jer je novi zadatak odmah završen.
  zadaci.add(const Zadatak(naslov: 'Prvi commit', zavrsen: true));

  for (final z in zadaci) {
    print('${z.naslov}: ${z.oznaka()}');
  }

  print('Otvorenih: ${brojOtvorenih(zadaci)}');
  print(prikazNapomene(napomena));
}

class Zadatak {
  final String naslov;
  final bool zavrsen;

  const Zadatak({required this.naslov, this.zavrsen = false});

  String oznaka() => zavrsen ? 'Gotovo' : 'U tijeku';
}

int brojOtvorenih(List<Zadatak> zadaci) =>
    zadaci.where((z) => !z.zavrsen).length;

// Zadatak 2
List<String> naslovi(List<Zadatak> zadaci) =>
    zadaci.where((z) => !z.zavrsen).map((z) => z.naslov).toList();

String prikazNapomene(String? napomena) => napomena ?? 'Bez napomene';
