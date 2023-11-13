TEXMF=$(HOME)/texmf

srcs=\
  bloomdido.ly \
  blues_for_alice.ly \
  confirmation.ly \
  four.ly \
  groovin_high.ly \
  moose_the_mooche.ly \
  my_one_and_only_love.ly \
  remember.ly \
  st_thomas.ly

# extra trailing slash is intentional, lilypond interprets ./ as a filename
%.pdf: %.ly
	lilypond -I $(TEXMF)/ly -I $(TEXMF)/fonts/otf -I $(TEXMF)/fonts/svg -o $(dir $@)/ $< ||:

%.png: %.pdf
	pdftoppm -f 1 -l 1 -png $< > $@

all: $(srcs:.ly=.pdf) $(srcs:.ly=.png)



