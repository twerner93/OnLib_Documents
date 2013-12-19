Feature: Datenbank nach Stichworten durchsuchen
  So k�nnen Titel gezielt gefiltert werden.

Szenario: Nutzer sucht nach einem Titelnamen
Gegeben Es sind Datens�tze vorhanden
Wenn Benutzer die Abfrage abschickt
Dann bekommt er eine Liste mit entsprechenden Eintr�gen

Szenario: Nutzer filtert nach Kategorie (Buch, Film, Album,..)
Gegeben Es sind Datens�tze vorhanden
Wenn der Benutzer Abfrage abschickt
Dann bekommt er eine Liste mit allen B�chern, Filmen, Alben,...

Szenario: Nutzer sucht nach nicht vorhandenem Titel
Gegeben Es sind Datens�tze vorhanden
Wenn der Benutzer die Abfrage abschickt
Dann bekommt er eine Nachricht, dass es diesen Titel noch nicht gibt