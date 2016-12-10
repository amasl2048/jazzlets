\version "2.18.2"
\header {
    title = "Beneath An Evening Sky"
    subtitle = "(Improvisation by Andrey & Nikita)"
    composer = "Ralph Towner" 
    tagline = ""  % removed 
}

empty = {
  r1 r1 r1 r1 \break
}

solo = \relative c''' {
  \clef treble
  \key cis \minor
  \time 6/4
  \set Staff.instrumentName = #"Guitar"

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% A1
%\mark \markup {\box A1}
  r4 r4 r4 r8 dis16 e fis8 dis b gis |
  r4 r4 r4 r8 gis16 a b8 gis e cis |
\break
  r4 r4 r4 e8 cis dis gis,~ gis4 |
  r4 r4 r4 r4 gis8 cis e b' |
\break

% A2
%\mark \markup {\box A2} 
  gis4 r4 r4 r8 dis16( cis16) a4 dis16( cis16) gis8 |
  r4 r4 r4 gis16( fis) cis8 gis' a~ a4~ |
\break
  a8 a16 b c8 ais r4 r8 b16 cis d8 g, r8 cis'16 d |
  e4 d16 e fis8~ fis e16 fis g8 fis16 g fis8 g16 fis a4~ |
\break

% Bridge
%\mark \markup {\box B} 
  a4 \times 2/3 {g8( fis) d} cis8 d
  \times 2/3 {e cis b~ b( a) e} fis cis | 

  \times 2/3 {a'8 e d fis cis a} b4
  \times 2/3 {g8 a e g e b} a4 |
\break
  gis16 a b d
  d e fis gis
  c fis b, b'
  b a fis e~
  e c fis gis
  e'8. d16 |

  d16 c b fis~ fis4
  e8 c b' b, fis' d' e, fis' | 
\break
  \times 2/3 {g8 e c~} c b
  fis16 a b8 d e,16 f g8 b r4 |   

  e,8. f16 cis16 gis b8~ b16 c a8
  g8. e16 f8 r8 r4 | 
\break
} % end solo

harmony = \chordmode {
\times 6/4 {cis1:m7 a:maj
cis:m7 a:maj

cis:m7 a:maj
e:m e:m

b:m11 b:m11
gis:7 gis:7

aes:maj a:m9}

} % end harmony

\score {
  <<
    \time 6/4
    \new ChordNames {
      \set chordChanges = ##t
      \harmony
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \solo
    }

  >>
  \layout {}
  \midi {\tempo 4 = 90}
}