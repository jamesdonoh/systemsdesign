PDFLATEX=pdflatex
PLANTUML=java -jar ~/Downloads/plantuml.jar

GENERATED_FIGURES=usecases.png analysis-classes.png design-classes.png sequence.png activity.png objects.png
FIGURES=richpicture.png $(GENERATED_FIGURES)

all: report.pdf

report.pdf: report.tex $(FIGURES)
	$(PDFLATEX) $<

%.png: %.pu
	$(PLANTUML) $<

clean:
	rm -f $(GENERATED_FIGURES) report.{pdf,aux,log}
