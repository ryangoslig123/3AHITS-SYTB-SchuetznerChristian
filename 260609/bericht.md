# Arbeitsbericht

- Name: Christian Schützner
- Datum: 09.06.2026
- Thema: Regular Expressions II
- Klasse: 3AHITS

---

Teil 1 mit den ersten zwei Aufgaben + Theorie findest du hier: https://ryangoslig123.github.io/3AHITS-SYTB-SchuetznerChristian/260526/bericht.html

# Übung (REs)

`^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9.-]+$`

Diese Expression matched einen String nach dem Format einer E-Mail. ^ kennzeichnet den Anfang eines Strings. a-zA-Z0-9 matched das ganze Alphabet und alle Zahlen. `_.+-` ist auch erlaubt. Danach endet die erste Zeichenklasse und es muss zwingend `@` vorkommen. Bei der zweiten Zeichenklassse, also alles nach dem @, darf kein +_. mehr vorkommen, sondern nur mehr -. Nach der zweiten Zeichenklasse muss zwingend ein . kommen, und nach der dritten Zeichenklasse wird mit $ das Ende des Strings gekennzeichnet.

String 1: `christian@schuetzner.org`  
String 2: `christian+-..__@schuetzner.org`
String 3: `htl______braunau...@htl------braunau.at`  
String 4: `a@b.c`  
String 5: `10.0.0.1@255.255.255.0.at`  

String 5 wird gematched da in der dritten Zeichenklasse auch ein Punkt erlaubt ist.

# Übung (sed)

`sed -E 's/#+$//' datei.txt`  

sucht am Zeilenende ($) zwingend nach einem #, die beliebig viele # nachfolgend haben können, und wird mit // gelöscht.

`sed -E 's/^#+//' datei.txt`

^ sucht am Anfang des Strings

`sed 's/' datei.txt`

^ ist wieder der Zeilenanfang, und es werden drei = eingefügt.

`sed -E 's/([^ ]+)/(\1)/g' datei.txt`

substituiert wird alles außer ein Leerzeichen. Da ich die erste Zeichengruppe als Suchmuster gekennzeichnet habe (), kann man das, was gefunden wird, mit \1 aufrufen und wird dann mit Klammern rundum substituiert. Ohne /g würde sed nur das erste Wort klammern und den Rest ignorieren.

# Übung (Datum)

`sed -E 's/([0-9]{4})[-/]([0-9]{2})[-/]([0-9]{2})/\3.\2.\1/g' datei.txt`

- ([0-9]{4}): Gruppe 1 (\1) – Sucht nach genau 4 Zahlen (das Jahr $YYYY$)  
- [-/]: Sucht nach dem dem - oder /  
- ([0-9]{2}): Gruppe 2 (\2) – Sucht nach genau 2 Zahlen (der Monat $MM$)  
- [-/]: Das zweite Trennzeichen  
- ([0-9]{2}): Gruppe 3 (\3) – Sucht nach genau 2 Zahlen (der Tag $TT$)  
- alle Gruppen werden zusammengefügt (mit Punkt natürlich)

# Übung (Logfile)

`grep "configure" logfile.txt | grep -v "half-configured"`

Die erste matched alles nach configure und -v steht für inverse, also alles außer.  

`grep -E "libsombok|libposix" logfile.txt`

`|` oder Verknüpfung  

´sed -E 's/[0-9]{2}:[0-9]{2}:[0-9]{2} //' logfile.txt`

3 Zahlen vor 0-9 der Länge 2 mit : dazwischen werden gematched.

`sed -E 's/^[0-9]{4}-[0-9]{2}-[0-9]{2} //' logfile.txt`

