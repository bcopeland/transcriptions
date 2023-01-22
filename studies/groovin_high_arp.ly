\version "2.18.2"

\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"

\layout { \omit Voice.StringNumber }

exercise = \relative c {
    ees8\6 g\5 bes\5 d\4 ees\4 g\3 bes\2 d\1 |
    ees8\1 d\1 bes\2 g\3 ees\4 d\4 bes\5 g\5 |

    e\6 g\5 a\5 c\4 e\3 g\3 a\2 c\2 |
    d\1 c\2 a\2 fis\3 d\4 c\4 a\5 fis\6 |

    ees8\6 g\5 bes\5 d\4 ees\4 g\3 bes\2 d\1 |
    ees8\1 d\1 bes\2 g\3 ees\4 d\4 bes\5 g\5 |

    bes8\5 d\4 f\3 g\3 bes\2 d\1 f\1 d\1 |
    e\1 c\2 bes\2 g\3 e\4 c\4 bes\5 g\5 |

    f\6 a\5 c\4 ees\4 f\3 a\2 c\2 ees\1 |
    f\1 ees\1 c\2 a\2 f\3 ees\4 c\4 a\5 |

    aes\5 c\4 ees\4 f\3 aes\3 c\2 ees\1 f\1 |
    d\1 bes\2 aes\3 f\3 d\4 bes\5 aes\5 f\6 |

    d\6 f\6 g\5 bes\5 d\4 f\3 g\3 bes\2 |
    cis\1 a\2 fis\3 e\3 cis\4 a\5 fis\5 e\6 |

    f\6 aes\5 c\4 ees\4 f\3 aes\3 c\2 ees\1 |
    d\1 bes\2 aes\3 f\3 d\4 bes\5 aes\5 f\6 |

    ees8\6 g\5 bes\5 d\4 ees\4 g\3 bes\2 d\1 |
    ees8\1 d\1 bes\2 g\3 ees\4 d\4 bes\5 g\5 |

    e\6 g\5 a\5 c\4 e\3 g\3 a\2 c\2 |
    d\1 c\2 a\2 fis\3 d\4 c\4 a\5 fis\6 |

    ees8\6 g\5 bes\5 d\4 ees\4 g\3 bes\2 d\1 |
    ees8\1 d\1 bes\2 g\3 ees\4 d\4 bes\5 g\5 |

    bes8\5 d\4 f\3 g\3 bes\2 d\1 f\1 d\1 |
    e\1 c\2 bes\2 g\3 e\4 c\4 bes\5 g\5 |

    f\6 a\5 c\4 ees\4 f\3 a\2 c\2 ees\1 |
    f\1 ees\1 c\2 a\2 f\3 ees\4 c\4 a\5 |

    aes\5 c\4 ees\4 f\3 aes\3 c\2 ees\1 f\1 |
    d\1 bes\2 aes\3 f\3 d\4 bes\5 aes\5 f\6 |

    aes\5 c\4 ees\4 f\3 aes\3 c\2 ees\1 f\1 |
    des\1 b\2 aes\2 f\3 des\4 b\4 aes\5 f\6 |

    ees\6 g\5 bes\5 c\4 ees\4 g\3 bes\2 c\2 |
    ees\1 c\2 aes\3 f\3 ees\4 c\4 bes\5 aes\5 |

}

theChords = \chordmode {
    \set chordChanges = ##t
    ees1:maj7 | ees:maj7 | a:m7 | d:7 |
    ees1:maj7 | ees:maj7 | g:m7 | c:7 |
    f:7       | f:7      | f:m7 |
    bes:7 |  g:m7      | fis:m7   | f:m7  | bes:7 |

    ees1:maj7 | ees:maj7 | a:m7 | d:7 |
    ees1:maj7 | ees:maj7 | g:m7 | c:7 |
    f:7       | f:7      | f:m7 |
    bes:7 | f:m7       | des:7   | ees:6 | f2:m7 bes:7 |
}

\score {
  <<
    \new ChordNames \theChords
    \new Staff {
      \clef "treble"
      \exercise
    }
    \new TabStaff \exercise
  >>
}
