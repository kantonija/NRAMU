// ignore_for_file: avoid_print, equal_elements_in_set

void main() {
 final ime = 'Ana';
 int brojVjezbe = 1;
 String? napomena;
 final teme = <String>['Dart', 'Flutter', 'Git'];
 final oznake = <String>{'novo', 'novo', 'vjezba'};
 final bodovi = <String, int>{'Ana': 80, 'Ivan': 55};

 print('Student: $ime');
 print('Vjezba: $brojVjezbe');
 print(napomena ?? 'Bez napomene');
 print(teme[0]);
 print(oznake.length);
 print(bodovi['Mia'] ?? 0);
}