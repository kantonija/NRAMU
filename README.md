## Verzije
 
- Dart: 3.13.5
- Flutter: 3.47.7

## Provjera razumijevanja 1
 
**Zašto skup `oznake` sadrži dva elementa?**
Skup 'Set' po definiciji ne dopušta duplikate. Literal `{'novo', 'novo', 'vjezba'}` sadrži vrijednost `'novo'` dvaput, ali se u skupu zadržava samo jednom. Zato skup ima 2 elementa: `'novo'` i `'vjezba'`, pa `oznake.length` ispisuje `2`.
 
**Zašto dohvat za Miju u početnom primjeru daje zamjensku nulu?**
U početnoj mapi `bodovi` postoje samo ključevi `'Ana'` i `'Ivan'`. Ključ `'Mia'` ne postoji, pa `bodovi['Mia']` vraća `null`. Operator `??` tada daje zamjensku vrijednost `0`, pa se ispisuje `0`. Tek nakon naredbe `bodovi['Mia'] = 70;` ključ postoji i ispis je `70`.

## Provjera razumijevanja 2
 
**Zašto je `naslov` označen s `required`, a `zavrsen` ima zadanu vrijednost?**
Svaki zadatak mora imati naslov i nema smislenu zadanu vrijednost, pa ga `required` prisiljava da se uvijek navede pri stvaranju objekta. Polje `zavrsen` ima razumnu zadanu vrijednost: novi zadatak je u početku nezavršen (`false`), pa ga nije nužno navoditi.
 
**Što bi se dogodilo da zadatak stvorimo bez naslova?**
Program ne bi radio. Dart bi javio grešku u kompajliranju da je imenovani parametar `naslov` obavezan, a nije naveden.