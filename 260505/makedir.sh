#!/bin/bash

DIR=$1 #Verzeichnisvariable

if [ -d "$DIR" ] #prüfen ob das Verzeichnis exestiert (mit Leerzeichen!)
    then
    COUNT=$(find "$DIR" -type f | wc -l) #Filecount Variable
    read -p "Soll das Directory $DIR (mit $COUNT Files) gelöscht werden? [j|n]:" auswahl #Read speichert folgende Benutzereingabe in die Variable auswahl
    
    if [ "$auswahl" == "j" ] #ja, soll gelöscht werden
    then
        rm -rf "$DIR"   #rm -rf löscht alle Dateien im Verzeichnis DIR
    elif [ "$auswahl" == "n" ] #nein, soll nicht gelöscht werden. 
    then
        exit 0 #Das Skript wird beendet
    fi
fi

mkdir "$DIR" #erstellen
echo "$DIR" > "$DIR/$DIR.txt" #Textdatei mit parameter