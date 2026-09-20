# Angwandte Wahrscheinlichkeitsrechnungen und Statistik
# Selbstcheckaufgaben - Thema "Einführung in R: Datenmanagement"

# ---------- 1 ----------
# Aus dem Studienbrief "Datenmanagement in R":
# Aufgabe 1.5.2 Erzeugung von Data Frames
name <- c("Susi", "Tim", "Christine", "Mathias")
beruf <- factor(c("Student", "Student", "Student", "Student"), levels = c("Student", "angestellt", "selbständig"))
figur <- factor(c("mollig", "mollig", "muskolös", "hager"), levels = c("hager", "dünn", "schlank", "normal", "mollig", "muskolös"), ordered = TRUE)
groesse <- c(1.97, 1.67, 1.90, 1.81)
gewicht <- c(98, 89, 71, 86)
trinkt <- c(TRUE, NA, TRUE, TRUE)

Freunde <- data.frame(Name = name, Figur = figur, Groesse = groesse, Gewicht = gewicht, Trinkt = trinkt, Beruf = beruf)
Freunde

# Aufgabe 1.5.5 Datenimport und -export
x <- scan(text = "12 3 3 34 43 23 34 90")
x
y <- scan(text = "A;qick;brown;fox;jumps;over;the;lazy;dog", sep = ";", what = "A")
y
write.table(Freunde, file = "daten.csv", sep=";", row.names = FALSE, col.names = FALSE)
tab <- read.table(file = "daten.csv", sep=";")
head(tab)

# Aufgabe 1.5.6 Import von Data Frames
library(MASS)
params = expand.grid(sep = c(" ", "|", ";"),
                     na = c("NA", "k.A."),
                     dec = c(".", ","),
                     row.names = c(TRUE, FALSE),
                     col.names = c(TRUE, FALSE),
                     fileEncoding = c("UTF-8", "latin1"),
                     stringsAsFactors = FALSE)
for (i in sample(1 : nrow(params), 10))
  do.call(write.table, c(list(x = Cars93,
                              file = paste("data", i, ".txt", sep = ""),
                              quote = TRUE),
                         params[i,]))

# ---------- 2 ----------
# Warum enthält das noten-Objekt nach Durchführung der folgenden Operationen einen fehlenden Wert?
noten <- c("Sehr Gut", "Gut", "Befriedigend", "Gut")
noten <- factor(noten, levels = c("Sehr gut", "Gut", "Befriedigend", "Genügend", "Nicht genügend"))
noten
## [1] <NA>   Gut   Befriedigend  Gut
## Levels: Sehr Gut Gut Befriedigend Genügend Nicht Genügend
# Antwort: In R gibt es unterschiede zwischen Groß- und Kleinschreibung!

# ---------- 3 ----------
# Wir erzeugen mittels schlange <- c("Stefan", "Hans", "Alissa", "Liam") einen Vektor namens schlange.
# Dieser repräsentiert eine Warteschlange an einer Supermarktklasse, wobei Stefan der erste in der Reihe ist.
# Verwenden Sie einen R-Befehl, um die Warteschlange nach und nach wie folgt zu aktualisieren:
schlange <- c("Stefan", "Hans", "Alissa", "Liam")

# a) Björn reiht sich am Ende der Schlange ein
(schlange <- c(schlange, "Björn"))

# b) Stefan bezahlt und geht.
(schlange <- schlange[-1])

# c) Alma kommt dazu. Sie hat nur einen Artikel zu bezahlen und überzeugt die anderen, sie vorzulassen.
(schlange <- c("Alma", schlange))

# d) Björn wird ungeduldig und geht.
(schlange <- schlange[-length(schlange)])

# e) Verwenden Sie which(), um herauszufinden, an welcher Stelle der Warteschlange sich Hans befindet.
which(schlange == "Hans")

# f) Alissa wird ungeduldig und geht. (Annahme: Wir wissen nicht, welche Position sie in der Warteschlange innehat)
idx <- which(schlange == "Alissa")
(schlange <- schlange[-idx])


