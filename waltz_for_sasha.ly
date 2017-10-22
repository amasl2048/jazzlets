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

\repeat volta 2 {
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
} % end repeat

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

% intro
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

\times 2/3 {c8 g' c} \times 2/3 {fis, c' e~} <fis, c' e>8 g'8 |
\times 2/3 {e8 c ees} \times 2/3 {e c bes} r4 |
e,,4 <g' d' fis>8 g' <c, fis a> b' |
<d,, d' g d'>8 (<e' a e'>) (<d g d'>) d, <a' d a'> d, |
  
  \break

\mark \markup {\box A2}

<a c' e b'>4 a'16 b c e g b d c |
b4 <a,, c' e g>8 d''16 c b a g8 |
<d, fis'>8 d'16 b d8 e d, <d' fis> |
<a, g' c d>8 a a16 a' c d e g a c |
  
  \break

b8 <g,~ c~ e~> <g c e> g'16 e g8 b |
c8 <fis,, c' e a > g' <c, e> b <e a> |
e,,8 <g' d' g>16 e' g8 <b, e' a> <e a d> <fis b e> |
d <a' cis fis> d,, <fis' a d> d, <cis' fis a> | 
  
  \break

% Bridge
\mark \markup {\box B}

<g d' fis b>4  \times 2/3 {a8 d e} fis16 b d a |
g'16 a g e b c d b d a b g |
<d, b''>16 fis' a8 g16 d fis cis e8 d16 e |
<e,, e''>16 b'' ees b  d a b a~ a  a8~ a16 |
  
  \break

<b e>16 a, <b' ees> a, <a' cis> a,8 a16 <aes' b> a,8. |
<d fis a b e>16 a'8 a16~ a16 a8 a16 <d, b' e> a'8 a16 |
<f, c' d a' b e>16 a'8 a16~ a16 a8 a16 a8 a |
<bes, d gis c e>16 gis'8 gis16~ gis16 gis8 gis8\fermata r16 r8 |
  
  \break

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

% intro
<c e g b>4.     e''8  b4   |
<d,, fis g b>4. b'''8 fis4 |
<c,, e g b>4.   e''8  b4   |
<d,, fis g b>4. b'''8 fis4 |
  
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

 \intro

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
