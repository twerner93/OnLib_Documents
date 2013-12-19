Feature: Informationen eines vorhandenen Titels bearbeiten

Szenario: Benutzer gibt Daten vollständig ein
Gegeben ich bin eingeloggt und habe Daten eingegeben
Wenn ich auf speichern klicke
Dann werden Daten in der Datenbank mit den neu eingegebenen überschrieben

Szenario: Benutzer gibt unvollständige Daten ein
Gegeben ich bin eingeloggt
Wenn ich auf speichern klicke
Dann wird eine Fehlermeldung angezeigt und auf unvollständige Daten hingewiesen

Seznario: Benutzer gibt Daten ein
Gegeben ich bin eingeloggt
Wenn ich auf abbrechen klicke
Dann werde ich auf die Detailseite des Titels weitergeleitet