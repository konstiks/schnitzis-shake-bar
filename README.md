# Schnitzis Shake Bar

Ein kleines HTML5-Merge-Spiel: Schieb Drinks über die Theke. Treffen zwei gleiche Drinks aufeinander, verschmelzen sie zum nächstgrößeren.

## Spielen

`index.html` im Browser öffnen. Es braucht keinen Server und keine Installation.

## Regeln

- Beim ersten Spiel erklärt eine kurze Anleitung (4 Schritte) alles Wichtige. Über das ?-Feld oben links lässt sie sich jederzeit wieder öffnen, das Spiel pausiert dabei.
- Glas unten nach links/rechts ziehen und loslassen (oder Pfeiltasten + Leertaste).
- Zwei gleiche Drinks ergeben den nächsten der 12 Stufen, vom Kirsch-Shot bis zum Schnitzis Mega-Shake.
- Jeder Merge bringt Punkte, schnelle Folge-Merges geben einen Combo-Multiplikator.
- Treffer frontal mit voller Wucht: Ein gerader Stoß schiebt das getroffene Glas deutlich weiter.
- Online-Bestenliste (Top 10 mit Namen) für alle Spieler, gespeichert in Supabase. Ohne Verbindung fällt das Spiel auf eine Liste auf dem eigenen Gerät zurück.
- Der eigene Rekord wird dauerhaft im Browser gespeichert.
- Ragt ein Drink über die gestrichelte Linie und bleibt dort liegen, ist das Spiel vorbei.

## Online-Bestenliste

Die Tabelle und Zugriffsregeln stehen in `supabase.sql`. Alle dürfen lesen und neue Einträge anlegen, ändern oder löschen geht nur im Supabase-Dashboard (Table Editor → scores).
