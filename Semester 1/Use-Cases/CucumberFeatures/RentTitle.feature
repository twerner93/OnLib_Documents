Feature: Benutzer können Titel von anderen Benutzern ausleihen
  Stehen mehrere Exemplare zur Auswahl und sind verfügbar, kann der Benutzer auswählen, von wem er leihen möchte

Szenario: Nutzer leiht Titel aus
Gegeben Benutzer ist eingeloggt und mindestens ein Exemplar des Titels ist verfügbar
Wenn Benutzer auf ausleihen klickt
Dann bekommt der Besitzer des Exemplars eine Benachrichtigung

Szenario: Nutzer leiht Titel aus
Gegeben Benutzer ist eingeloogt und kein Exemplar des Titels ist verfügbar
Wenn Benutzer auf ausleihen klickt
Dann bekommt bekommt er angezeigt, dass der Titel nicht verfügbar ist

