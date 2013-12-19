Feature: Benutzer k�nnen Titel von anderen Benutzern ausleihen
  Stehen mehrere Exemplare zur Auswahl und sind verf�gbar, kann der Benutzer ausw�hlen, von wem er leihen m�chte

Szenario: Nutzer leiht Titel aus
Gegeben Benutzer ist eingeloggt und mindestens ein Exemplar des Titels ist verf�gbar
Wenn Benutzer auf ausleihen klickt
Dann bekommt der Besitzer des Exemplars eine Benachrichtigung

Szenario: Nutzer leiht Titel aus
Gegeben Benutzer ist eingeloogt und kein Exemplar des Titels ist verf�gbar
Wenn Benutzer auf ausleihen klickt
Dann bekommt bekommt er angezeigt, dass der Titel nicht verf�gbar ist

