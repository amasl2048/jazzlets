\version "2.16.2"
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
  
  \set Staff.instrumentName = #"Guitar"

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% A1
%\mark \markup {\box A1}
r4 r4 r4 r8 dis16 e fis8 dis b gis
r4 r4 r4 r8 gis16 a b8 gis e cis 
\break
r4 r4 r4 e8 cis dis gis,~ gis4
r4 r4 r4 r4 gis8 cis e b'
\break

% A2
%\mark \markup {\box A2} 
gis4 r4 r4 r8 dis16~ (cis) a4 dis16~ (cis) gis4 
r4 r4 r4 gis16 (fis) cis8 gis' a~ a4~
\break
a8 a16 b c8 ais r4 r8 b16 cis d8 g, r8 cis'16 d
r1
\break

% Bridge
%\mark \markup {\box B} 
\empty
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