Feature: Eine neue Kopie eines Titels zur Datenbank hinzufügen
  Titel wird automatisch zu "meinen Titeln" hinzugefügt
  Andere Benutzer können den Titel von mir ausleihen


Szenario: Titel ist noch nicht in der Datenbank
Gegeben ich bin eingeloggt und füge neuen Titel hinzu
Wenn ich speichern klicke
Dann wird zunächst der Titel gespeichert und dann Informationen zur Kopie abgefragt

Szenario: Titel ist bereits in der Datenbank
Gegeben ich bin eingeloggt
Wenn ich speichern klicke
Dann werden die Informationen über meine Kopie gepspeichert und ich sehe diese in der Liste der Kopien dieses Titels

Szenario Benutzer hat bereits eine Kopie des Titels in der Datenbank
Gegeben ich bin eingeloggt
Wenn ich speichern klicke
Dann abfragen, ob Benutzer den Titel 2x besitzt oder es ein Irrtum ist

Szenario: Titeleingabe-Formular wird angezeigt
Gegeben ich bin eingeloggt
Wenn ich auf abbrechen klicke
Dann komme ich zurück auf die zuletzt angezeigt Seite