# Angewandte Wahrscheinlichkeitsrechnung und Statistik
# Selbstcheckaufgaben - Thema 1a (Zufallsexperimente und Ergebnisse, Grundlegende Abzählverfahren)

# ---------- 1 ----------
# Kontrollfragen: Fragen zu Abschnitt 7.1 Grundlegende Abzählverfahren

# 1) Wie viele mögliche Ablaufdaten der Form MJ gibt es, wenn M = 1,...,12 und J = 00, 01, 02, 03, 04 sein kann?
12 * 5


# 2) Wie viele siebenstellige Dualzahlen gibt es?
2*2*2*2*2*2*2
2^7

# 3) Ein Vertreter möchte Ihnen sein neues Passwortsystem verkaufen: Ein Passwort kann aus fünf bis acht Zeichen 
# bestehen (Kleinbuchstaben oder Ziffern). Zur zusätzlichen Sicherheit werden alle „gängigen“ Hackerpasswörter ausgeschlossen;
# welche, bzw. wie viele genau das sind, ist ein streng gehütetes Firmengeheimnis. Der Vertreter garantiert Ihnen aber, 
# dass das System mehr als 100^8 Möglichkeiten für Passwörter hat. Was halten Sie davon?
meinung <- "Schlecht"

# 4) Wenn A und B gemeinsame Elemente haben, welche der beiden Möglichkeiten ist gleich |A ∪ B|? Wie heißt diese Regel?
# a) |A| + |B| − |A ∩ B| oder b) |A| + |B| + |A ∩ B|.
# Die Richtige Lösung ist a). Es handelt sich um das Inklusions-Exklusions-Prinzip.

# 5) Ein Marktforschungsinstitut hat für Sie folgende Daten erhoben: 80% ihrer potentiellen Kunden besitzen einen Computer,
# 70% haben einen DVD-Player und 40% besitzen beides. Bezahlen Sie die Rechnung des Marktforschungsinstituts?
80 + 70 - 40
# Nein da 110 nicht kleiner gleich 100 ist.

# ---------- 2 ----------
# Übungen (Aufwärmübungen)

# 1) Wie viele verschiedene Initialen aus Vor-, Mittel- und Nachname gibt es?
26^3

# 2) Ein Restaurant bietet 5 verschiedene Vorspeisen, 10 verschiedene Hauptgerichte und 6 verschiedene Nachspeisen an.
# Wie viele Möglichkeiten für ein Menü gibt es? (besteht aus: Vorspeise, Hauptspeise und Nachspeise)
5 * 10 * 6

# 3) Bei einer Freier stoßen 7 Personen mit Sekt an. Wie oft klirren die Gläser?
choose(7, 2)

# 4) In einem Unternehmen gibt es 700 Mitarbeiter. Gibt es mit Sicherheit zwei Mitarbeiter mit denselben
# Initialien aus Vor- und Nachnamen?
26^2 #mind zwei Mitarbeiter haben die selben initialen

# 5) Wie viele Variablennamen gibt es, die aus mindestens drei und höchstens fünf Kleinbuchstaben bestehen?
26^3 + 26^4 + 26^5

# 6) Wie viele Möglickeiten gibt es für die Sitzordnung von fünf Personen in einem PKW, wenn nur drei von ihnen einen
# Führerschein besitzen?
3 * 4 * 3 * 2 * 1

# 7) Wie viele fünfstellige Dualzahlen beginnen mit 11 oder enden mit 00?
2^3 + 2^3 - 2^1
