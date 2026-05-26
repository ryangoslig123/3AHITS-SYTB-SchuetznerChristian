# Arbeitsbericht

- Name: Christian Schützner
- Datum: 26.05.2026
- Thema: Regular Expressions
- Klasse: 3AHITS

---

# Regular Expressions

Regular Expressions werden verwendet, um bestimmte Strings zu suchen, zu filtern oder zu ersetzen, und werden unter Anderem in grep verwendet.

- `.` Platzhalter, steht für ein beliebiges Zeichen

- `/` Delimiter (kennzeichnet den Anfang und das Ende eines Suchmusters)

- `\` hebt die Funktion des nachfolgenden RegEx Zeichen auf (z.B. wenn man `.` ersetzen will)

- `[0-9]` würde zum Beispiel eine Zahl von 0-9 matchen

- `^` "nicht", also alles außer

- `{}` bei `a{3}` wird nach 3x a gesucht 

# RegexOne

**Lesson 1**: abc

**Lesson 2**: 123

**Lesson 3**: Alle matchen `.` , also braucht man: `\.`

**Lesson 4**: Man will nur c,m und f matchen: `[cmf]`

**Lesson 5**: `[^b]og` 

**Lesson 6**: `^[a-z]` (alles außer Kleinbuchstaben)

**Lesson 7**: `a{2}`

**Lesson 8**: `\d+ files? found\?` ? = optional

**Lesson 9**: `\s`

**Lesson 10**: `^Mission: successful$`

**Lesson 11**: `^(file.+)\.pdf$`

**Lesson 12**: `(\w+ (\d+))` mit \w kann man Wortgruppen ersetzen

**Lesson 13**: `(\d+)x(\d+)`

**Lesson 14**: `I love (cats|dogs)`

**Lesson 15**: `.*`

![alt text](image.png)

# Übung (Subdir count)

`ls -l | grep "^d" | wc -l`

`ls -l` listet alles auf  

`grep '^d'` filtert alle Zeilen die am Anfang ein d haben

`wc -l` wordcount lines, also wie viele Zeilen übrig geblieben sind

# Übung (REs)

