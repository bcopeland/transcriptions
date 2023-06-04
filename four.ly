\version "2.18.2"
#(set-global-staff-size 18)
\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"

\paper {
  #(set-paper-size "letter")
%  paper-height = 11\in
%  paper-width = 8.5\in
  indent = 0\mm
  between-system-space = 2.5\cm
  between-system-padding = #0
  %%set to ##t if your score is less than one page:
  ragged-last-bottom = ##t
  ragged-bottom = ##f
  markup-system-spacing = #'((basic-distance . 23)
                             (minimum-distance . 8)
                             (padding . 1))
}

title = #"Four"
composer = #"Miles Davis"
meter = #" Med. Swing"

realBookTitle = \markup {
  \score {
    {
      \override TextScript.extra-offset = #'(0 . -4.5)
      s4
      s^\markup {
        \fill-line {
          \fontsize #1 \lower #1 \rotate #7 \concat { " " #meter }
          \fontsize #8
            \override #'(offset . 7)
            \override #'(thickness . 6)
            \underline \larger \larger #title
          \fontsize #1 \lower #1 \concat { #composer " " }
        }
      }
      s
    }
    \layout {
      \omit Staff.Clef
      \omit Staff.TimeSignature
      \omit Staff.KeySignature
      ragged-right = ##f
    }
  }
}

\header {
  title = \realBookTitle
  tagline = ##f
}

theNotes = \relative c' {
  \set Staff.midiInstrument = "trumpet"
  \key ees \major
    r2 r8 bes'8 c d |

    r8 bes8 c d r8 bes8 c d |
    r8 f ees d r8 bes8 c des ~ |
    des1 |
    r2 ees,8 d ees f | \break

    g8 ees8 f g r8 ees8 f g |
    r8 bes8 aes g r8 ees8 f ges ~ |
    ges1 | 
    r2 f8 g aes a | \break

    bes2 ees,8 g bes8 b8 ~ |
    b4 e,8 ees8 ~ ees4 r4 |
    r8 c'4. bes4 aes8 g ~ |
    g2 f8 g aes a | \break

    bes2 ees,8 g bes8 b8 ~ |
    b4 e,8 ees8 ~ ees4 r4 |
    r8 c'4. bes4 aes8 g ~ |
    g2 r8 bes8 c d | \break

    r8 bes8 c d r8 bes8 c d |
    r8 f ees d r8 bes8 c des ~ |
    des1 |
    r2 ees,8 d ees f | \break

    g8 ees8 f g r8 ees8 f g |
    r8 bes8 aes g r8 ees8 f ges ~ |
    ges1 |
    r2 f8 g aes a | \break

    bes2 ees,8 g bes8 b8 ~ |
    b4 e,8 ees8 ~ ees4 r4 |
    r8 c'4. bes4 aes8 g ~ |
    g4 r4 f8 g aes a | \break

    bes4 g8 bes b e, ees4  |
    c'4 aes d4 bes8 ees8 ~ |

% solo
    ees4 r4 g16 (aes g4. ~ |
    g8) e16 (ees d4) r8 c8 bes aes | \break

    g4 g g2 ~ |
    g2 r8 aes8 bes8 fis8 ~ |
    fis8 fis4 r8 fis2 |
    r1 | \break

    r4 ees4 f g |
    aes4 bes c ees4 ~ |
    ees4 b8 bes8~bes8 aes4. |
    r8 ees'8 r8 b bes4 aes8 g8 ~ | \break

    g4 r2. |
    r8 ges8 a b des4 e8 d8 |
    ees4. c8 r8 aes8 g f8 ~ |
    f4 r4 bes4 aes8 g ~ | \break

    g4. bes8 d,4 ees |
    f aes d,2 |
    r2 r8 d8 ees f |
    ges aes a bes c d ees4 | \break

    d4. a8 ~ a4. bes8 ~ |
    bes8 r8 r2. |
    bes'8 e, d bes f ees d4 |
    r4. f8 ees4 r8 f | \break

    g8 bes aes4 r8 c8 r4 |
    r4 ees8 f8 ~ f8 r8 ees4 |
    ges4. f8 r8 ees c b |
    bes4. aes8 bes aes8 ees4 | \break

    g4. bes8 r2 |
    f8 aes a4 des4 r8 b8 |
    c2 c8 bes aes g ~ |
    g4 r2. | \break

    r4 f8 f aes8 bes des ees |
    aes4 ( g aes4 g ) |
    r8 ees r8 bes aes g4. |
    r1 |

}

theChords = \chordmode {
    \set chordChanges = ##t

    ees1:maj7 |

    ees1:maj7 | ees1:maj7 | ees1:m7 | aes:7 |
    f1:m7 | f1:m7 | aes1:m7 | des1:7 |

    ees1:maj7 | ges2:m7 b:7 | f1:m7 | bes1:7 |
    ees1:maj7 | ges2:m7 b:7 | f1:m7 | bes1:7 |

    ees1:maj7 | ees1:maj7 | ees1:m7 | aes:7 |
    f1:m7 | f1:m7 | aes1:m7 | des1:7 |

    ees1:maj7 | ges2:m7 b:7 | f1:m7 | d2:m7.5 g2:7 |
    g2:m7 ges:m7 | f2:m7 bes2:m7 | ees1:maj7 | f2:m7 bes2:m7 |

% solo
    ees1:maj7 | ees1:maj7 | ees1:m7 | aes:7 |
    f1:m7 | f1:m7 | aes1:m7 | des1:7 |

    ees1:maj7 | ges2:m7 b:7 | f1:m7 | bes1:7 |
    ees1:maj7 | ges2:m7 b:7 | f1:m7 | bes1:7 |

    ees1:maj7 | ees1:maj7 | ees1:m7 | aes:7 |
    f1:m7 | f1:m7 | aes1:m7 | des1:7 |

    ees1:maj7 | ges2:m7 b:7 | f1:m7 | d2:m7.5 g2:7 |
    g2:m7 ges:m7 | f2:m7 bes2:m7 | ees1:maj7 | f2:m7 bes2:m7 |
}

\score {
  <<
    \new ChordNames \theChords
    \new Voice = soloist \theNotes
  >>
  \layout {
    \override Score.Clef #'break-visibility = #'#(#f #f #f)  % make only the first clef visible
    \override Score.KeySignature #'break-visibility = #'#(#f #f #f)  % make only the first time signature visible
    \override Score.SystemStartBar #'collapse-height = #1  % allow single-staff system bars
  }
  \midi {
    \tempo 4 = 200
  }
}
