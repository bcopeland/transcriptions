TEXMF=$(HOME)/texmf

srcs=\
  st_thomas.ly \
  groovin_high.ly \
  confirmation.ly \
  studies/groovin_high_arp.ly \
  studies/cf_filling_low.ly

# extra trailing slash is intentional, lilypond interprets ./ as a filename
%.pdf: %.ly
	lilypond -I $(TEXMF)/ly -I $(TEXMF)/fonts/otf -I $(TEXMF)/fonts/svg -o $(dir $@)/ $< ||:

all: $(srcs:.ly=.pdf)



