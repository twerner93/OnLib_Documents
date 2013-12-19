Feature: Datenbank nach Stichworten durchsuchen
  So können Titel gezielt gefiltert werden.

Szenario: Nutzer sucht nach einem Titelnamen
Gegeben Es sind Datensätze vorhanden
Wenn Benutzer die Abfrage abschickt
Dann bekommt er eine Liste mit entsprechenden Einträgen

Szenario: Nutzer filtert nach Kategorie (Buch, Film, Album,..)
Gegeben Es sind Datensätze vorhanden
Wenn der Benutzer Abfrage abschickt
Dann bekommt er eine Liste mit allen Büchern, Filmen, Alben,...

Szenario: Nutzer sucht nach nicht vorhandenem Titel
Gegeben Es sind Datensätze vorhanden
Wenn der Benutzer die Abfrage abschickt
Dann bekommt er eine Nachricht, dass es diesen Titel noch nicht gibt