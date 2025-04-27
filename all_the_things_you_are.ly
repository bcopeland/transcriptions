\version "2.18.2"
#(set-global-staff-size 18)
\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"
\include "common.ily"

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

title = #"All the Things You are"
composer = #"Hank Mobley Solo"
meter = #" 200"

% from Johnny Griffin - A blowing session

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

theNotes = \relative c'' {
  \set Staff.midiInstrument = "flute"
  \key aes \major

  \section
  % \sectionLabel "head"

  % aes1 |
  % des2. aes4 |
  % g4 g g g |
  % g8 c~ c2 g4 | \break

  % f4 f f f |
  % f4. b8 ~ b4 f8 e ~ |
  % e1 |
  % r1 | \break

  % ees1 |
  % aes2. ees4 |
  % d d d d |
  % d8 g~ g2 d4 |

  % c4 c c c |
  % c d8 ees d c ~ c4|
  % b1 |
  % r4 d g d' | \break

  % d c8 c8~ c2 |
  % r4 des, d c' |
  % b1 |
  % r4 d, g b | \break

  % b a8 a8~ a2 |
  % r4 bes, b a' |
  % gis1 |
  % r1 | \break

  % aes1 |
  % des2. aes4 |
  % g4 g g g |
  % g8 c~ c2 g4 | \break

  % f1 |
  % ees'2 d2 |
  % ees,4 ees ees8 ees8 ees4  |
  % g2. f4 | \break

  % des4 des f aes |
  % f'2 g,2 |
  % aes1 |
  % r1 | \break

  \section
  \sectionLabel "solo"
  r1 |
  \tuplet 3/2 {g8 aes g} f e ees d des f |
  c' g \tuplet 3/2{b c b} g f ees des |
  c ees r8 ges bes ges f ees | \break

  aes4 f8 ees des ees f aes |
  g fis f a e d ~ d4 |
  b8 g a b ~ b4 r4 |
  r2 b8 c ees g | \break

  c4 g8 f ees f g c ~ |
  c4 aes8 g f g aes des |
  b8 r8 r4 ees,16 f16 g8 r4 |
  r2 bes8 aes g f | \break

  ees d c bes aes bes c ees |
  c des d des c d e fis |
  g d b g e' c a fis |
  g4 fis8 g b d ~ d b | \break

  c4 r2 r8 b' ~ |
  b a16 g fis8 f ~ f e16 d c8 b ~ |
  b4 fis8 a fis g b d |
  fis g16 aes a8 g r8 d b a | \break

  b4 r2 r8 bes' |
  a gis fis e dis b cis dis |
  fis dis e fis gis4 r4 |
  r2 r8 g aes e | \break

  g8 aes16 g ees8 f ~ f c ees d |
  des? ees f aes c des c bes |
  a g ges f e bes des e |
  ees? des c ees b' a r4 | \break

  r2 aes8 f ees des |
  aes'4 aes8 f ees des r8 fis |
  g4. ees8 \tuplet 3/2 { d16 ees d } c8 r8 ges'8 ~ |
  ges4. d8 des8 b r4 | \break

  r8 f8 aes c aes bes des f |
  aes a c a bes aes g f |
  ees des bes b c4 r4 |
  r1 | \break

}

theChords = \chordmode {
    \set chordChanges = ##t

    f1:m7 |
    bes:m7 |
    ees:7 |
    aes:maj7 | \break

    des:maj7 |
    d2:m7 g:7 |
    c1:maj7 |
    c:maj7 | \break

    c:m7 |
    f:m7 |
    bes:7 |
    ees:maj7 | \break

    aes:maj7 |
    a2:m7 d2:m7 |
    g1:maj7 |
    g1:maj7 | \break

    a1:m7 |
    d1:7 |
    g1:maj7 |
    g1:maj7 | \break

    fis1:m7 |
    b1:7 |
    e1:maj7 |
    c:7.9+ | \break

    f1:m7 |
    bes1:m7 |
    ees1:7 |
    aes1:maj7 | \break

    des1:maj7 |
    des1:m7 |
    c:m7 |
    b:dim7 | \break

    bes1:m7 |
    ees1:7 |
    aes:maj7 |
    g2:m7 c2:m7 | \break
}

\score {
  <<
    \new ChordNames \tpose \theChords
    \new Voice = soloist \tpose \theNotes
  >>
  \layout {
    \override Score.Clef. #'break-visibility = #'#(#f #f #f)  % make only the first clef visible
    \override Score.KeySignature. #'break-visibility = #'#(#f #f #f)  % make only the first time signature visible
    \override Score.SystemStartBar. #'collapse-height = #1  % allow single-staff system bars
  }
  \midi {
    \tempo 4 = 200
  }
}
