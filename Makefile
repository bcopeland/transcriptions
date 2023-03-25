TEXMF=$(HOME)/texmf

srcs=\
  st_thomas.ly \
  groovin_high.ly \
  confirmation.ly \
  my_one_and_only_love.ly

# extra trailing slash is intentional, lilypond interprets ./ as a filename
%.pdf: %.ly
	lilypond -I $(TEXMF)/ly -I $(TEXMF)/fonts/otf -I $(TEXMF)/fonts/svg -o $(dir $@)/ $< ||:

%.png: %.pdf
	pdftoppm -f 1 -l 1 -png $< > $@

all: $(srcs:.ly=.pdf) $(srcs:.ly=.png)



