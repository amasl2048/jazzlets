\version "2.18.2"

\paper {
  top-margin    = 2\cm
  bottom-margin = 2\cm
}

\header {
    title = "Waters Of March"
    subtitle = "Improvisation by Andrey & Nikita"
    composer = "A. Jobim"
    tagline = ""  % removed
}


empty = {
  r1 r r r \break
}


solo = \relative c'' {
  \clef treble
  \key bes \major

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()


\mark \markup {\box 1}
  r8 f g aes g f r8 ees |
  r8 f g aes g f r8 ees |
  r8 a bes c bes a r8 g |
  ges aes ges f~ f ees4 d8 |

\break
  r8 bes d f r8 d f ges |
  aes4 g8 g~ g f f4 |
  g4 ees8 ees~ ees d bes4 |
  ges'8 ees f ees bes ges f ees | 
  
\break
  d4 c''8 bes a ges d a |
  aes4 aes'8 g f d bes aes |
  g4 g'8 ees d c g ees |
  ges ees f ees r8 bes c cis |

\break
  d4 \times 2/3 {c8 (cis) (d)} f4 \times 2/3 {f8 (gis) (g)} |
  bes4 \times 2/3 {bes8 (b) (c)} f4 d8 c |
  d4 f8 f f d c d~ |
  d4 ges8 ges ges d c d |

% Solo
\mark \markup {\box 2}
\break
  r4 g8 g f g aes4 |  
  bes8 g aes4 bes8 g aes4 |
  r8 a g f ees f g r8 |
  r8 c bes ges r8 c bes f | 
  
\break
  r8 g ees bes f' d a c |
  aes8 g aes4 r8 bes8 aes g |  
  f8 g g4. r4 r8 |
  f8 ges ges4. r4 r8 |

\break
  a'8 bes bes4 r4 \times 2/3 {c8 bes a} |
  \times 2/3 {c8 bes aes} bes8 c d d r4 |
  e8 ees ees4. r4 r8 |
  ees8 f ges ges r4 r4 | 

\break
\empty

} % end theme

harmony = \chordmode {
  bes1:maj/aes bes:maj/aes g:m6 ees:m7/fis
  bes1:maj e:9 ees:maj aes:7.5-
  bes1:maj bes2:9.4 bes:7 ees1:maj ees:m7
  bes1:maj bes2:9.4 bes:7 ees1:maj ees:m7
} % end harmony


\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \time 4/4
      \harmony
      \harmony 
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \time 4/4
      \solo
    }

  >>

  \layout {}
  \midi {\tempo 4 = 90}
}