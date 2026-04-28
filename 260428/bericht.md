# Arbeitsbericht

- Name: Christian Schützner
- Datum: 28.04.2026
- Thema: test Kommando
- Klasse: 3AHITS

# Datei zu groß

```sh
test "$(ls -l "$1" | tr -s ' ' | cut -d ' ' -f 5)" -gt 10 && echo "Datei ist zu groß" || echo "Groesse OK"
```
Ich habe es mit einer einzigen test Abfrage gelöst, bei der alle Leerzeichen der Ausgabe von ls -l der Datei zu einem einzigen Leerzeichen gesqueezed werden. Mit cut -d geht wird bei jedem Leerzeichen eine neue Zeile angefangen, und von dort braucht man die fünfte. -gt ist quasi das größer Zeichen (greater than). 


# Dir Creator

```sh
test -d "$DIR" && { echo "Verzeichnis existiert bereits"; ls -l "$DIR"; } || mkdir "$DIR"
```

-d prüft, ob ein pfad ein existierendes verzeichnis ist.

# Stundenplan