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

title = #"Someday My Prince Will Come"
composer = #"Wynton Kelly Solo"
meter = #" 100"

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
  \key bes \major
  \time 3/4

  \section
  \sectionLabel "solo"
  r2. |
  d2. |
  r4 bes8 ees g aes ~ |
  aes ees g ees c16 d c b | \break

  d16 ees d b c8 d ees f |
  g4 c8 ees4. |
  r4 d8 \tuplet 3/2 {d16 c bes} g8 ees |
  d4 cis8 gis fis e | \break

  f8 f'8 r2 |
  r4 \tuplet 3/2 {g8 a bes} c4 |
  r4 d8 bes f ees |
  d c cis gis fis e | \break

  f d f bes ~ bes4 |
  bes4 \tuplet 3/2 {c cis dis8 e ~ } |
  e8 g f \tuplet 3/2 { f16 e ees } d8 c |
  bes8 a aes g16 ges f8 ees | \break

  \tuplet 3/2 { d f bes } d ees d4 |
  r8 fis, c' d c4 |
  r8 fis, \tuplet 3/2 { aes a bes } a4 |
  r4 g8 aes g d | \break

  f16 g f d ees8 g \tuplet 3/2 { c4 d8 ~ |
  d8 ees4 } \tuplet 3/2 {g bes8. b16 ees4 } |
  d2. |
  c16 d c bes a c fis, e f d ees c | \break

  d4 r4 r8 f |
  e f fis4 c'8 b |
  bes g ees4 r8 c |
  cis4 ees4 \grace g16 g8 fis | \break

  f ees c cis d f, ~ |
  f4 g8 aes bes b |
  d \tuplet 3/2 {d16 c bes} g8 ees d c |
  f f r2 | \break

  \tuplet 3/2 { bes8 f bes } \tuplet 3/2 { d bes d } f4 |
  \tuplet 3/2 { r4 fis8 } \tuplet 3/2 { bes fis bes  } <bes, bes' c ees>4 |
  r8 d ees g bes d |
  \ottava 1
  \tuplet 3/2 { ees16 ees' ees, } \tuplet 3/2 {ees' ees, ees'} <d d,>8 <c c,> <b b,> <g g,> | \break

  <c c,> <g g,> <c c,> <g g, > <ees' ees,> <c c,> |
  <g' g,> <ees ees,> <g g,> <ees ees,> \tuplet 3/2 { <f f,>4 <ees ees,>8 ~ |
  <ees ees,> <d d,> c } g4

  \ottava 0
}

theChords = \chordmode {
    \time 3/4
    \set chordChanges = ##t

    bes2.:maj7 |
    d:7 |
    ees:maj7 | 
    g:7 | \break

    c:m7 |
    g:7 |
    c:7 |
    f:7 | \break

    d:m7 | 
    des:dim7 | 
    c:m7 | 
    f:7 | \break

    d:m7 | 
    des:dim7 | 
    c:m7 | 
    f:7 | \break

    bes2.:maj7 |
    d:7 |
    ees:maj7 | 
    g:7 | \break

    c:m7 |
    g:7 |
    c:7 |
    f:7 | \break

    f:m7 | 
    bes:7 | 
    ees:maj7 | 
    e:dim7 | \break

    bes:maj7 | 
    c:m7 | 
    bes:maj7 | 
    f:7 | \break

    bes2.:maj7 |
    d:7 |
    ees:maj7 | 
    g:7 | \break

    c:m7 |
    g:7 |
    c:7 |
    f:7 | \break

    d:m7 | 
    des:dim7 | 
    c:m7 | 
    f:7 | \break

    d:m7 | 
    des:dim7 | 
    c:m7 | 
    f:7 | \break
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
