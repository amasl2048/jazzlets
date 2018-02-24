\version "2.16.2"

\paper {
  top-margin    = 2\cm
  bottom-margin = 2\cm
}

\header {
    title = "Aria di Almirena, Handel"
    subtitle = "(Lascia Ch'io Pianga)"
    composer = "Andrey and Nikita"
    tagline = ""  % removed
}

emptyt = {
  r2. r2. r2. r2. \break
}

empty = {
  r1 r r r \break
}

theme = \relative c' {
  \clef treble
  \key a \major

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% A (3/4)
\mark \markup {\box A}

<a e' a cis>4 <e' a cis> r8 <e a cis>8 |
<b fis' a d>4 <fis' a d>4 r4 |
<e, b' d a' b>4 <d' gis b e> r8 <e gis d'> |
<a, e' a d>4 <e' a cis> r4 |

\break

<d a' d fis>4 <e d' fis> gis'8 a16 b |
<d,, gis b e>4 <cis e a cis e> r8 cis' |
<d, fis a cis>8 b' <cis, e a cis>4 <e, b' d gis b>8 a' |
<a, cis e a>2. |

\break

% Bridge
\mark \markup {\box B}

<a e' a cis>4 <fis e' a cis a'> r8 fis'' |
<b,, fis' a dis>8 <b dis a' cis> <fis dis' a' b>4 <fis dis' a'> | 
<b fis' a dis fis>4 <gis dis' fis b dis b'> r8 gis''8 |

\break

<cis,, gis' cis e>8 dis' <cis, a' cis e>4 r8 a'' |
<b,, gis''>8 fis'' <b, e gis> b, <b a' dis fis>8. e'16 |
<e,, b' a' gis' b e>2. |

\break

% A' (4/4)
\mark \markup {\box A'}

<e' a cis>4 a,8 <e' a cis>8 r8 a,8 <e' a b>4 |
<fis a d>4 b,8 <a' d fis>8 r4 cis8 d |
<b, d a' b>4 e,8 <d' gis b e>8 r8 e, <e' gis d'>4 |
<e a d>4 a,8 <e' a cis> r8 b' cis d |

\break

<a d fis>4 d,8 <b' d fis> r8 gis' a b |
<d,, gis b e>4 cis8 <e a e'> r8 d' cis4 |
<d, fis a cis>4 b' \times 2/3 {cis8 e a } \times 2/3 {e b a} |
<a, cis e a>1 |

\break


} % end theme


solo = \relative c' {

% A (4/4)
\mark \markup {\box A solo}

<a cis'>4 <e' a> \times 2/3 {e,4 <e' a d> a'} |
<b,, cis'>4 <fis' a>8 d' fis,,4 <fis' a> |
<b, a''>4 <fis' a d>8 e' e,, b' <d gis b>4 |
<a b'>4 <e' a>8 cis' e,,8 <e' a>4 e'8 |

\break

<d, fis'>4 <a' d>8 gis' \times 2/3 {a,,4 <b' d a'> b'} |
\times 2/3 {<e,,, fis''>4 <d'' e> a'} \times 2/3 {<e,, d'''> <e'' gis> cis'} |  
<d,, cis''>8 <d' fis> b'4 <e,,, a''>8 <b'' d> gis'4 |
a,,8 <e' a cis> a' fis b, a <a, cis e a>4 |

\break

% Bridge
\mark \markup {\box B}

r1 r r

\break

r1 r r 

\break

% A'
\mark \markup {\box A'}

\empty

\break

\empty

\break


} % end solo

apart = \chordmode {  % 3/4
a2. b:m7 e:7 a4:sus4 a2
d4 d2:6 e4:7 a2 d2:maj e4:7 a2.:maj
}

bridge = \chordmode {  % 3/4
a4 fis2:m11 b2.:7 b4:7 gis2:m11
cis2.:m b:7 e
}

aparts = \chordmode {  % 4/4
a1 b:m7 e:7 a4:sus4 a4 a2
d4 d4:6 d2:6 e4:7 a4 a2 d4:maj e4:7 e2:7 a1:maj
}

apartf = \chordmode {  % 4/4
a1 b:m7 e:7 a2:sus4 a2
d4 d4:6 d2:6 e2:7 a2 d2:maj e2:7 a1:maj
}

bridgef = \chordmode {
a2 fis:m11 b1:7 b2:7 gis:m11
cis1:m b:7 e
}


harmonies = \chordmode {
%A1
 \apart
%A2
 \bridge

} % end harmonies

harmoniesf = \chordmode {
%A1
 \apartf
%A2
 \bridgef
%A'
 \apartf
} % end harmoniesf

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \time 3/4
      \harmonies
      \time 4/4
      \aparts
      \harmoniesf
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \time 3/4
      \theme
      \time 4/4
      \solo
    }

  >>

  \layout {}
  \midi {\tempo 4 = 60}
}
