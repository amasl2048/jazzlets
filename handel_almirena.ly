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

solo = \relative c' {
  \clef treble
  \key a \major

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% A
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

% A'
\mark \markup {\box A'}

\emptyt

\break

\emptyt

\break


} % end solo


solof = \relative c' {

% A
\mark \markup {\box A}

<e a cis>4 a,8 <e' a cis>8 r8 a,8 <e' a b>4 |
<fis a d>4 b,8 <a' d fis>8 r4 cis8 d |
<b, d a' b>4 e,8 <d' gis b e>8 r8 e, <e' gis d'>4 |
<e a d>4 a,8 <e' a cis> r8 b' cis d |

\break

\empty

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


} % end solof

apart = \chordmode {
a2. b:m7 e:7 a4:sus4 a2
d4 d2:6 e4:7 a2 d2:maj e4:7 a2.:maj
}

bridge = \chordmode {
a4 fis2:m11 b2.:7 b4:7 gis2:m11
cis2.:m b:7 e
}

apartf = \chordmode {
a1 b:m7 e:7 a2:sus4 a
d2 d:6 e:7 a d:maj e:7 a1:maj
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
%A'
 \apart
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
      \harmoniesf
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \time 3/4
      \solo
      \time 4/4
      \solof
    }

  >>

  \layout {}
  \midi {\tempo 4 = 60}
}
