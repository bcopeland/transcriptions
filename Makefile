TEXMF=$(HOME)/texmf

# uncomment to transpose for Bb (or use e.g. ees for Eb)
# TPOSE=-e '(define-public transpose-key "bes")'

srcs=\
  billies_bounce.ly \
  bloomdido.ly \
  blue_train.ly \
  blues_for_alice.ly \
  confirmation.ly \
  four.ly \
  groovin_high.ly \
  moose_the_mooche.ly \
  my_one_and_only_love.ly \
  remember.ly \
  attya.ly \
  scrapple_from_the_apple.ly \
  st_thomas.ly \
  on_green_dolphin_street.ly \
  on_the_sunny_side_of_the_street.ly \
  ornithology.ly

# extra trailing slash is intentional, lilypond interprets ./ as a filename
%.pdf: %.ly
	lilypond $(TPOSE) -I $(TEXMF)/ly -I $(TEXMF)/fonts/otf -I $(TEXMF)/fonts/svg -o $(dir $@)/ $< ||:

%.png: %.pdf
	pdftoppm -f 1 -l 1 -png $< > $@

all: $(srcs:.ly=.pdf) $(srcs:.ly=.png)



