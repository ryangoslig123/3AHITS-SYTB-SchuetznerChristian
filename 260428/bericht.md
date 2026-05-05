# Arbeitsbericht

- Name: Christian Schützner
- Datum: 28.04.2026
- Thema: test Kommando
- Klasse: 3AHITS

# command substitution

command substitution bedeutet, dass man den output eines Kommandos als Variable speichern kann.



# Anzahl Einträge in einem Verzeichnis

```sh
n=$(ls "$1"| wc -l)
echo "Es sind $n Einträge vorhanden"
```
ls | wc -l zählt die Einträge im aktuellen Verzeichnis. "$1" schaut für ls im übergebenen Verzeichnis nach, allerdings darf man sich nicht im übergeben Verzeichnis befinden (einfach zurück mit cd..). Diesen output habe ich in eine Variable gespeichet und später ausgegeben.

Unterschied zwischen : 
```
ls
ls | cat
echo "$(ls)"
```
- ls gibt Dateien direkt in der Konsole aus
- ls | cat leitet die Ausgabe durch einen Pipe weiter, weil ls in einen strom schreibt und cat ihn wiedergibt.
- echo  "$(ls)" führt ls aus und setzt das Ergebnis als Text in echo ein, alles wird beim substituieren zum String

# Tage bis zum Ball

```sh
ball_datum="2027-01-16"

# aktuelles datum in sekunden seit epoch
heute=$(date +%s)

# ball datum in sekunden seit epoch
ball=$(date -d "$ball_datum" +%s)

# differenz in sekunden umrechnen
diff=$((ball - heute))

# sekunden in tage umrechnen
tage=$((diff / 86400))
