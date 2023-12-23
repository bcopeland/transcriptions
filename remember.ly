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

title = #"Remember"
composer = #"As played by Hank Mobley"
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

theNotes = \relative c'' {
  \set Staff.midiInstrument = "flute"
  \key aes \major
    r2. r8 aes |

    f8 aes r4 r4 f8 c' |
    r2 r8 bes4. |
    aes4 r4 aes4 aes8 c |
    r2 r8 aes4. | \break

    f4 r4 r4 r8 aes8 |
    e4 r4 r4 r8 ees8 |
    c'8 ees8 r2. |
    r2. r8 aes, | \break

    f2 aes4 f8 c' |
    r2 r8 bes4. |
    aes4 r4 aes4 aes8 c |
    r2. r8 aes | \break

    f2 r4 r8 aes8 |
    e2 r4 r8 ees8 |
    c'8 ees8 ~ ees4 r2 |
    r2. des4 | \break

    f2 aes4 f8 aes ~ |
    aes2 r4 des, |
    f4 r4 r4 aes,8 des8 |
    r4 ees8 des aes e ees des | \break

    c4 r8 c'8 ees4 c8 ees~ |
    ees2 r4 c8 bes |
    r2 bes8 aes bes c |
    r2. r8 aes | \break

    f8 aes r4 r4 f8 c' |
    r2 r8 bes4. |
    aes4 r4 aes8 f aes8 c |
    r2. r8 aes | \break

    f4 r4 r4 r8 aes8 |
    e2 r2 |
    r8 bes'8 \tuplet 3/2 { ees g bes } aes g ges f |
    ees des c bes aes g f aes | \break

    f4. ees'8 des4 g,8 f |
    e4. des'8 c4 f,8 e |
    ees4. b'8 ~ b4 ees,4 |
    d4. bes'8 r2 | \break

    r8 bes8 \tuplet 3/2 {des8 f aes} c4 f,8 c' |
    b4 e,2. |
    bes'8 aes bes aes g f ees f |
    ges8 aes a ges aes g f ees | \break

    des4. aes'8 r2 |
    g4 ~ g8 ges16 f e8 c g4 |
    ges'4 ~ ges8 f16 e ees8 b ges e |
    f4 r2. | \break

    r2. r8 ees'8 |
    aes8 f g bes aes ees des f |
    ees8 c b des c aes g b |
    aes8 f \tuplet 3/2 {ges8 bes des} f ees aes ges | \break

    f4 ~ f8 g16 f ees8 des r4 |
    des4 des r8 des4. |
    r1 |
    \tuplet 3/2 { ees16 ges ees } des8 aes' e ees4 des8 c | \break

    r8 c8 \tuplet 3/2 { ees g bes } aes g f e |
    ees8 c r2. |
    r2 des'8 c f,8 g |
    bes2 r8 a8 aes ges | \break

    f4. aes16 f ees8 des r4 |
    e4. g16 e d8 c r4 |
    r8 aes' ges e ees des b4 |
    g'4 f8 ees des c b4 | \break

    bes4 r4 r8 bes \tuplet 3/2 { des f aes } |
    c8 aes c4 \tuplet 3/2 { bes8 c bes } g4 |
    aes4 aes2 r4 |
    \tuplet 3/2 {c8 des c8} aes2 f4 | \break
    aes8 aes r2. | r1 | r1 | r1 |
}

theChords = \chordmode {
    \set chordChanges = ##t

    des1:maj7 |

    des1:maj7 | c1:7.5+ | b1:7.5- | bes1:7 |
    bes1:m7 | ees:7 | aes:maj7 | ees2:m7 aes:7 |
    des1:maj7 | c1:7.5+ | b1:7.5- | bes1:7 |
    bes1:m7 | ees:7 | aes:maj7 | ees2:m7 aes:7 |
    des1:maj7 | des1:maj7 | des1:maj7 | des1:maj7
    aes1:maj7 | aes1:maj7 | aes1:maj7 | aes1:maj7
    des1:maj7 | c1:7.5+ | b1:7.5- | bes1:7 |
    bes1:m7 | ees:7 | aes:maj7 | ees2:m7 aes:7 |

    des1:maj7 | c1:7.5+ | b1:7.5- | bes1:7 |
    bes1:m7 | ees:7 | aes:maj7 | ees2:m7 aes:7 |
    des1:maj7 | c1:7.5+ | b1:7.5- | bes1:7 |
    bes1:m7 | ees:7 | aes:maj7 | ees2:m7 aes:7 |
    des1:maj7 | des1:maj7 | des1:maj7 | des1:maj7
    aes1:maj7 | aes1:maj7 | aes1:maj7 | aes1:maj7
    des1:maj7 | c1:7.5+ | b1:7.5- | bes1:7 |
    bes1:m7 | ees:7 | aes:maj7 | ees2:m7 aes:7 |
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
