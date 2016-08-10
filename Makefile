PDFLATEX=pdflatex
PLANTUML=java -jar ~/Downloads/plantuml.jar

FIGURES=richpicture.png usecases.png sequence.png

all: report.pdf

report.pdf: report.tex $(FIGURES)
	$(PDFLATEX) $<

%.png: %.pu
	$(PLANTUML) $<

clean:
	rm -f $(FIGURES) report.{pdf,aux,log}
