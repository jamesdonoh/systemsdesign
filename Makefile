PDFLATEX=pdflatex
PLANTUML=java -jar ~/Downloads/plantuml.jar -teps

GENERATED_FIGURES=usecases.eps analysis-classes.eps design-classes.eps sequence.eps activity.eps objects.eps
FIGURES=richpicture.png $(GENERATED_FIGURES)

all: report.pdf

report.pdf: report.tex $(FIGURES)
	$(PDFLATEX) $<

%.eps: %.pu
	$(PLANTUML) $<

clean:
	rm -f $(GENERATED_FIGURES) report.{pdf,aux,log}
