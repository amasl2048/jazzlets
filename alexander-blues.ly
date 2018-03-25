\version "2.16.2"

\paper {
  top-margin    = 2\cm
  bottom-margin = 2\cm
}

\header {
    title = "Alexander-Blues"
    subtitle = ""
    composer = "A.Mussyaka"
    tagline = ""  % removed
}


empty = {
  r1 r r r \break
}

riff = {
a,,8 <g' c e>4 a,8 <g' c e>4 <f bes d>
a,8 <g' c e>4 a,8 <g' c e>4 <f bes d>
}

riffs = {
r8 <g, c e>4 r8 <g c e>4 <f bes d>
r8 <g c e>4 r8 <g c e>4 <f bes d>
}

solo = \relative c'' {
  \clef treble
  \key a \minor

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% Theme
%\mark \markup {\box Theme}
c'4 c \times 2/3 {c8 (a) g} a4 |
\times 2/3 {g8 e d} e4 d g8 a |
\riff |

\break

c''4 c \times 2/3 {c8 (a) g} a4 |
\times 2/3 {g8 e d} e4 d g8 a |
\riffs |

\break
<a d f c'>4 c' \times 2/3 {c8 (a) g} a4 |
<a, d f c'>4 c' \times 2/3 {c8 aes (e)} d'4 |
<a, d g>8 <e' a> r a,, <g' c e>4 <f bes d> |
r8 <g c e>4 r8 <g c e>4 <f bes d> |
\break

% Solo
\mark \markup {\box Solo}

<a, c''>8 <g' c e>4 a,8 <g' c e>4 <f a d> |
a,8 <g' c e>4 a,8 <g' c e>8 bes' r8 g |
<a,, a''>8 <c' e>4 e8 c b d bes |
a8 <c e>4 a'8 bes c d4 |

\break

<d,, f' bes ees>8 c'' <e, a d> bes' a f ees c |
d8 bes a4 g8 e c bes |  
a8 <g' c e>4 a,8 <g' c e>4 <f bes d>8 g' | 
e8 f a f e c' d4 |

\break

<b, f' a e'>4 d8 g ges a g b |
<e,,, b'' f' aes>4 g'''8 d c b aes g |
<a,, d' g c>4 d'8 g a c \times 2/3 {d b g} |
d8 a' f e~ e d b a |

\break
\mark \markup {\box 2}

a,8 <g' c e>4 a,8 <g' c e>4 <f bes d> |
g'8 e (d) e (d) bes a, <f' bes d> |
a,8 <g' c e>4 a,8 <g' c e>4 <f bes d> |
\times 2/3 {bes'8 (g) a} \times 2/3 {g f (d)}
\times 2/3 {f (d) e} \times 2/3 {d c (bes)} |

\break

d,8 <c' f>4 g'8 d f (e) c~ | 
c8 a4 bes8 a4 g |
a,8 <g' c e>4 a8 g4 f |
e8 f e d des c a bes |

\break

<b f' a d>4 bes''8 bes d c g' f |
e8 d c bes b aes g f |
e d g bes a e c bes |
a8 <d g c>4 a8 <d g c>4 <g, c f bes> |

\break

\mark \markup {\box 3}

a,8 <g' c e>4 a,8 <g' c e>4 <f bes d> |
a,8 <d g b>4 a8 <e' g c>4 a,8 <f'~ bes~ d~>8 |
<f bes d>8 a,8 <g' c e>4 e8 <a d g>4 a'8 |
b16 c b a \times 2/3 {g8 e d} g16 e b bes a g e ees | 

\break

d8 <g c e>4 d8 <e' a d>4 <f bes ees>8 f' |
e4  d16 c b c  b8 a g f |
a,,8 <g' c e>4 a,8 <b' e a>4 <c f bes>8 c' |
b4  c16 f, a f  (e16) d c bes  a8 a, | 

\break

<b a' d>4 c''16 f, a f  (e16) d c a b8 b, | 
<bes aes' d>4 \times 2/3 {e'8 g b} \times 2/3 {a b c} d e |

\break

a,,,8 <g' c e b'>4 a,8 <g' c e b'>4 <bes f' a d> |
a,8 <g' c e b'>4 a,8 <g' c e b'>4 <f bes d a'> |
a,8 <g' c e b'>4 a,8 <g' c e b'>4 <bes f' a d>8 e' |
a,,,8 <g' c e b'>4 a,8 <g' c e b'>4 <f bes d a'>8 g' |

\break

} % end theme

harmony = \chordmode {
a1:m7 a:m7 a:m7 a:m7
d:m7 d:m7 a:m7 a:m7
b:m7.5- e:7 a:m7 e:7
} % end harmony

harmonies = \chordmode {
a1:m7 d:m7 a:m7 a:m7
d:m7 d:m7 a:m7 a:m7
b:m7.5- e:7 a:m7 e:7
} % end harmonies

harmonye = \chordmode {
a1:m7 d:m7 a:m7 a:m7
d:m7 d:m7 a:m7 a:m7
b:m7.5- e:7 a:m7 a:m7
a:m7 a:m7
} % end

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \time 4/4
      \harmony
      \harmonies
      \harmonies
      \harmonye
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \time 4/4
      \solo
    }

  >>

  \layout {}
  \midi {\tempo 4 = 100}
}