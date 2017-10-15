\version "2.16.2"

\paper {
  top-margin    = 2\cm
  bottom-margin = 2\cm
}

\header {
    title = "Waltz for Sasha"
    subtitle = "(for my loved wife)"
    composer = "A. Mussyaka"
    tagline = ""  % removed
}

empty = {
  r2. r2. r2. r2. \break
}

solo = \relative c'' {
  \clef treble
  \key e \minor

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% A
\mark \markup {\box A}

e4 b' d,8  e |
\times 2/3 {e8 fis d} e4 b' |
\times 2/3 {cis8 b a} fis4 r16 g16 fis8 |
d4 \times 2/3 {d8 e c} d8. c16 |

  \break

b8 e b4 g |
\times 2/3 {a'8 e ees} d4 c |
r8 d8 e fis a d |
\times 3/4 {cis4 b fis d} |

  \break

% Bridge
\mark \markup {\box B}

a'4 fis d8 fis |
\times 2/3 {e8 d b} \times 2/3 {e d g,} r4 |
\times 2/3 {e'8 d b} \times 2/3 {e d g,} a4 |
b2. |

\break

\times 2/3 {e8 fis gis} \times 2/3 {c, cis a} r4 |
\times 2/3 {e'8 fis g} c,4 cis |
b8 e b4 a |
b8 e b4 r4 |

\break

% A'
\mark \markup {\box A'}

<a, g' c e>4 b'' d16 c b c |
b8. g16 e c d8 d e |
<b, fis' a d>4 d'8 e <a, cis fis> g' |
<a,, g' c d>4 \times 2/3 {<e' a d>8 <g c e> <fis c' d>} <b d>8. c16 |

\break

<c, e g b>8 e' b4 g |
\times 2/3 {a'8 e ees} d4 <fis, a c> |
e,8 <e' d'> <g e'> <a fis'> <c a'> d' |
\times 3/4 {<d,, d' fis cis'>4 <c' fis b> <a cis fis> <fis b d>} |

\break

<c e g b>4.     e''8  b4   |
<d,, fis g b>4. b'''8 fis4 |
<c,, e g b>4.   e''8  b4   |
<d,, fis g b>4. b'''8 fis4 |

\break

% Solo
\mark \markup {\box Solo}

<a,,, e' g b>8 c' <a, e' g d'> g'' fis e |
<a,, c' e b'>16 a'' fis4 fis16 (e) c4 |
<d, g'>8 fis' cis a g4 |
<a, c'>8 b'8~ b g16 fis d4 | 

  \break

\times 2/3 {c8 g' c} \times 2/3 {fis, c' e} <fis, c' e>8 g'8 |
\times 2/3 {e8 c ees} \times 2/3 {e c bes} r4 |
e,,4 <g' d' fis>8 g' <c, fis a> b' |
<d,, d' g d'>8 <e' a e'> <d g d'> d, <a' d a'> d, |
  
  \break

\mark \markup {\box A2}

\empty
  
  \break

    \empty
  
  \break

% Bridge
\mark \markup {\box B}

  \empty
  
  \break

  \empty
  
  \break

\mark \markup {\box A'}
   \empty
  
  \break

   \empty
  
  \break
  
} % end solo

apart = \chordmode {
a2.:m7 a:m7 d:maj a:m7
c:maj f:maj e:m7 d:maj
}

bridge = \chordmode {
g2.:maj c:maj d:maj e:maj
a:maj d:maj f:maj g:6
}

intro = \chordmode {
c2.:maj d2.:maj c2.:maj d2.:maj
}

harmonies = \chordmode {
%A1
 \apart
%A2
 \bridge
%A'
 \apart
%
 \intro

 \apart
 \apart
 \bridge
 \apart

} % end harmonies

\score {
  <<
    \time 3/4
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \solo
    }
  >>
  \layout {}
  \midi {\tempo 4 = 90}
}
