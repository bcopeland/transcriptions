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
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  markup-system-spacing = #'((basic-distance . 23)
                             (minimum-distance . 8)
                             (padding . 1))
}

title = #"St. Thomas - Solos"
composer = #"-Sonny Rollins"
meter = #" (Med. Swing)"

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
  \set Staff.midiInstrument = "flute"
  \key c \major
    r4. g'8 c,2 |
    r4. g'8 cis,2 |
    r8 g' d g2 r8 |
    r8 g8 d g cis, g' cis, g' | \break

    c,2 r8 g' cis,4 |
    r8 g' d4 r8 g8 r4 |
    r8 g cis,4 r8 g'8 cis, g' |
    c,4 r8 g' cis, g' cis, g' | \break

    c,2 r8 g'8 e g |
    b d f cis e ais, g gis |
    a f d g e f a c |
    e gis, a c dis b gis fis | \break

    g8 c,4 r f'8 e,4 |
    r8 g8 f4 r8 a8 fis4 |
    r4. g8 r4. g8 |
    r4. g8 r8 g8 cis, g'8 | \break

    c,4 r8 g'8 c,4 r8 g'8 |
    c,4 r8 g'8 cis,4 r |
    r8 g' d4 r8 g8 cis, g' |
    c,4 r8 g' f4 r8 a | \break

    g c, r4 r8 cis' d f |
    \tuplet 3/2 { cis d dis } \tuplet 3/2 { e ees d } cis ais a g  |
    e f \tuplet 3/2 { g a c } e g, b d |
    c g e a ~ a4 r4 | \break

    r4. g8 bes d f d |
    e d \tuplet 3/2 {c e g} c bes \tuplet 3/2 {a fis g} |
    a f e d \tuplet 3/2 { g a g } f e |
    d c b d f a g f | \break

    e g, bes g d' c bes gis |
    a c d e g f e d |
    c a g f e g d g |
    c,4 r4. g'8 b d | \break

    f e c g b c r4 |
    r4. bes'2  a8 |
    g8 c,4 r8 r2 |
    r4 \tuplet 3/2 {e8 f g} fis4 g | \break

    r2 fis4. g8 |
    r2 r8 c, g'4 |
    a2 g4 f8 e ~ |
    e r8 r2. | \break

    r4 bes' e, e' |
    d cis2. |
    r1 |
    d4 c8 a b a g f | \break

    e g d des c b bes gis |
    a f e ees gis fis g f |
    e g a b d b c c |
    b c e g b a g b, | \break

    c f e c a aes g f |
    e d' b g des' bes ges4 |
    c8 a f4 b b8 a |
    g e r2. | \break

    r4 g'16 a b c b a g8 r4 |
    r4. bes4 r8 a8 e |
    g ges f g, e' f d b |
    c g e g e f aes f | \break

    g e4. r4 r8 bes8 |
    a4. a'4 r8 g8 e |
    f4 a,8 aes4. r4 |
    r2 r8 g'8 c f | \break

    f f f f e c r4 |
    r2 \tuplet 3/2 {g'8 a aes} g e |
    f f e d c g r4 |
    r1 | \break

    r8 d' b c r g' b a |
    g f e d \tuplet 3/2 {cis e g} ais gis |
    a f e d g f e d |
    c d e f g a b c ~ | \break

    c b a r8 r4 r8 g ~ |
    g f e d4 c4 g8 |
    e'4. f8 e4 e |
    e8 g c, d e g, a bes ~ | \break

    bes4 r4. bes8 \tuplet 3/2 { d8 f a } |
    c4 \tuplet 3/2 { a8 f d } dis8 e r4 |
    r8 g, c g'4 f  bes8~ |
    bes8 aes4 ees c8 d b | \break

    c4 f8 d e c ais gis |
    a c d e g f c' aes |
    g f e d c r4. |
    r4. bes'4. a8 g | \break

    f g4. r2 | r1 | r1 | r1 |

}

theChords = \chordmode {
    c1:6 | a:7 | d2:m7 g:7 | c1:6 |
    c1:6 | a:7 | d2:m7 g:7 | c1:6 |
    e:m7.5- | a:7 | d:m7 | g:7 |
    c2:7 c:7/e | f:6 fis:dim7 | c:6/g g:7 | c1:6 |

    c1:6 | a:7 | d2:m7 g:7 | c1:6 |
    c1:6 | a:7 | d2:m7 g:7 | c1:6 |
    e:m7.5- | a:7 | d:m7 | g:7 |
    c2:7 c:7/e | f:6 fis:dim7 | c:6/g g:7 | c1:6 |

    c1:6 | a:7 | d2:m7 g:7 | c1:6 |
    c1:6 | a:7 | d2:m7 g:7 | c1:6 |
    e:m7.5- | a:7 | d:m7 | g:7 |
    c2:7 c:7/e | f:6 fis:dim7 | c:6/g g:7 | c1:6 |

    c1:6 | a:7 | d2:m7 g:7 | c1:6 |
    c1:6 | a:7 | d2:m7 g:7 | c1:6 |
    e:m7.5- | a:7 | d:m7 | g:7 |
    c2:7 c:7/e | f:6 fis:dim7 | c:6/g g:7 | c1:6 |

    c1:6 | a:7 | d2:m7 g:7 | c1:6 |
    c1:6 | a:7 | d2:m7 g:7 | c1:6 |
    e:m7.5- | a:7 | d:m7 | g:7 |
    c2:7 c:7/e | f:6 fis:dim7 | c:6/g g:7 | c1:6 |

    c1:6
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
