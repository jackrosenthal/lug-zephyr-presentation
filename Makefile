RSTFILES=$(wildcard *.rst)
43PDFFILES=$(patsubst %.rst,out/%-43.pdf,$(RSTFILES))
169PDFFILES=$(patsubst %.rst,out/%-169.pdf,$(RSTFILES))
1610PDFFILES=$(patsubst %.rst,out/%-1610.pdf,$(RSTFILES))

.PHONY: all
all: $(43PDFFILES) $(169PDFFILES) $(1610PDFFILES)

out:
	mkdir out

out/%.pdf: %.tex beamerthemelug.sty | out
	xelatex -shell-escape $<
	mv $(patsubst out/%.pdf,%.pdf,$@) out
	rm -f $(patsubst out/%.pdf,%.log,$@) \
	      $(patsubst out/%.pdf,%.aux,$@) \
	      $(patsubst out/%.pdf,%.nav,$@) \
	      $(patsubst out/%.pdf,%.out,$@) \
	      $(patsubst out/%.pdf,%.snm,$@) \
	      $(patsubst out/%.pdf,%.toc,$@) \
	      $(patsubst out/%.pdf,%.vrb,$@)
	rm -rf $(patsubst out/%.pdf,_minted-%,$@)

%-169.tex: %.rst xelatex.tex
	rst2beamer --template=xelatex.tex --theme=lug --documentoptions="aspectratio=169" $< > $@

%-1610.tex: %.rst xelatex.tex
	rst2beamer --template=xelatex.tex --theme=lug --documentoptions="aspectratio=1610" $< > $@

%-43.tex: %.rst xelatex.tex
	rst2beamer --template=xelatex.tex --theme=lug --documentoptions="aspectratio=43" $< > $@
