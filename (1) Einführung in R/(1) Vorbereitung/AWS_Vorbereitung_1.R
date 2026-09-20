#Angewandte Wahrscheinlichkeitsrechnung und Statistik
#Selbstcheckaufgaben - Thema "Einführung in R"

#erzeugen Sie die folgenden Vektoren mittels rep() und/oder seq():
# 0 -0.1 -0.2 -0.3 -0.4 -0.5 -0.6 -0.7 -0.8 -0.9 -1 -1.1 -1.2 -1.3 -1.4 -1.5
# 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5
# 0 0 0 0 0 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4
# 1 2 3 4 5 2 3 4 5 6 3 4 5 6 7 4 5 6 7 8 5 6 7 8 9


# ---------- 1 ----------
seq(from = 0, to = -1.5, by = -0.1)
rep(1 : 5, 5)
rep(0 : 4, each = 5)
rep(1 : 5, 5) + rep(0 : 4, each = 5)

# ---------- 2 ----------
# a) Erzeugen Sie einen Vektor ALTER mit folgenden Werten: 10, 12, 44, 78, 20, 1.
ALTER <- c(10, 12, 44, 78, 20, 1)

# b) Erzeugen Sie daraus einen Vektor GEBURTSJAHR und geben Sie ihn aus!
GEBURTSJAHR <- 2023 - ALTER
GEBURTSJAHR

# c) Rechnen Sie das durchschnittle Alter aus!
mean(ALTER)

# d) Extrahieren Sie aus ALTER jedes zweite Element und geben Sie das Ergebnis aus! (Hinweis: erzeugne Sie erst ein
# Indexvektor als Sequenz von 1 bis zur halben Länge von Alter, und multiplizieren Sie diesen dann mit 2).
index <- seq(1, length(ALTER)/2) * 2
ALTER[index]

# e) Entfernen Sie jedes dritte Element aus dem Vektor permanent!
index2 <- seq(1, length(ALTER)/3) * 3
ALTER <- ALTER[-index2]
ALTER
