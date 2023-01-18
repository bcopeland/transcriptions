TEXMF=$(HOME)/texmf

srcs=\
  st_thomas.ly \
  groovin_high.ly \
  studies/groovin_high_arp.ly

%.pdf: %.ly
	lilypond -I $(TEXMF)/ly -I $(TEXMF)/fonts/otf -I $(TEXMF)/fonts/svg $< ||:

all: $(srcs:.ly=.pdf)



