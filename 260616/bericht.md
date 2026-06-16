# Arbeitsbericht

- Name: Christian Schützner
- Datum: 16.06.2026
- Thema: Schleifen
- Klasse: 3AHITS


# Theorie

Bei einer while Schleife gibt es wie in C einen normalen Bedingungsteil, der mit [] gekennzeichnet wird. Will man aber arithmetische Funktionen verwenden, muss man den Bedingungsteil mit zwei runden Klammern kennzeichnen. Sonst muss man z.B. bei <= -le 10 (-less) verwenden.
```sh
counter=1
while ((counter<=10)) # <= 10
do
    echo $counter 
    ((counter++))
done
```
do und done markieren den Ausführungsteil.

```sh
data="1 2 3 4 5 6 7"
for i in $data
do
    echo $d
done

echo "---Kommandozeilenargumente---"
for arg in $@
do  
    echo $arg
done

for value in {20..25}
do
    echo $value
done
```
Variante 1 : Durchläuft die einzelnen, durch Leerzeichen getrennten Werte einer zuvor in einer Variablen gespeicherten Zeichenkette.

Variante 2 : Verarbeitet nacheinander alle Parameter ($@), die dem Skript beim Aufruf über die Kommandozeile übergeben wurden.

Variante 3 : Generiert und durchläuft mithilfe einer sogenannten "Brace Expansion" ({20..25}) eine feste Sequenz von fortlaufenden Zahlen.